import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/categories/i_category_repo.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/main.dart';

part 'category_detailed_event.dart';
part 'category_detailed_state.dart';
part 'category_detailed_bloc.freezed.dart';

@injectable
class CategoryDetailedBloc
    extends Bloc<CategoryDetailedEvent, CategoryDetailedState> {
  final ICategoryRepo _categoryRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  CategoryDetailedBloc(this._categoryRepo, this._jwtTokensRepo)
      : super(_Initial()) {
    on<_GetCategoryDetailed>((event, emit) async {
      emit(_Loading());
      final response = await _categoryRepo.getCategoruById(event.categoryId);
      await response.fold((failure) async {
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
      }, (success) {
        log('detailed category fetched');
        emit(_Loaded(success));
      });
    });
  }
}
