import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/categories/i_category_repo.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/main.dart';

part 'catrogies_group_event.dart';
part 'catrogies_group_state.dart';
part 'catrogies_group_bloc.freezed.dart';

@injectable
class CategoriesGroupBloc
    extends Bloc<CategoriesGroupEvent, CategoriesGroupState> {
  final ICategoryRepo _categoryRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  CategoriesGroupBloc(this._categoryRepo, this._jwtTokensRepo)
      : super(_Initial()) {
    on<_GetCategoryGroups>((event, emit) async {
      log('get category groups event detected',name: "CategoriesGroupBloc");
      emit(const _Loading());
      final categoryGroups = await _categoryRepo.getCategoryGroups();
      await categoryGroups.fold((failure) async {
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
          log('failure detected ${failure.toString()}');
          emit(_Error(failure));
        }
      }, (categoryGroups) async {
        log('category groups fetched');
        emit(_Loaded(categoryGroups));
      });
    });
  }
}
