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

part 'detailed_service_event.dart';
part 'detailed_service_state.dart';
part 'detailed_service_bloc.freezed.dart';

@injectable
class DetailedServiceBloc
    extends Bloc<DetailedServiceEvent, DetailedServiceState> {
  final IServiceRepo _serviceRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  DetailedServiceBloc(this._serviceRepo, this._jwtTokensRepo)
      : super(_Initial()) {
    on<_Reset>((event, emit) {
      emit(const _Initial());
    });
    on<_GetSubServiceById>((event, emit) async {
      emit(const DetailedServiceState.loading());
      final result = await _serviceRepo.getSubServiceById(event.subServiceId);
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
                emit(DetailedServiceState.error(l));
              },
              (r) async {
                add(event);
              },
            );
          } else {
            emit(DetailedServiceState.error(failure));
          }
        },
        (success) {
          emit(DetailedServiceState.loaded(success));
        },
      );
    });
  }
}
