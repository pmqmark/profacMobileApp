import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/services/i_service_repo.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/main.dart';

part 'search_services_event.dart';
part 'search_services_state.dart';
part 'search_services_bloc.freezed.dart';

@injectable
class SearchServicesBloc
    extends Bloc<SearchServicesEvent, SearchServicesState> {
  final IServiceRepo _serviceRepo;
  final IJwtTokensRepo _jwtTokensRepo;

  SearchServicesBloc(this._jwtTokensRepo, this._serviceRepo)
      : super(_Initial()) {
    on<_Search>((event, emit) async {
      emit(_Loading());
      final result = await _serviceRepo.searchServices(event.query);
      await result.fold(
        (failure) async {
          if (failure is AuthFailure) {
            final res = await _jwtTokensRepo.authFailureHandler(failure);
            log('handling completed$res');
            res.fold(
              (l) {
                log('failure detected');
                if (l is AuthFailure) {
                  log('auth failure detected');
                  BlocProvider.of<AuthenticationBloc>(
                          navigatorKey.currentContext!)
                      .add(const AuthenticationEvent.logout());
                }
                emit(_Error(l));
              },
              (r) async {
                add(event);
              },
            );
          } else {
            emit(_Error(failure));
          }
        },
        (success) {
          emit(_Loaded(success));
        },
      );
    });
  }
}
