import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/categories/i_category_repo.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

@injectable
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ICategoryRepo _categoryRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  CategoriesBloc(this._categoryRepo, this._jwtTokensRepo) : super(_Initial()) {
    on<_GetAllCategories>(
      (event, emit) async {
        emit(const _Loading());
        final categories = await _categoryRepo.getAllCategoris();
        await categories.fold((failure) async {
          if (failure is AuthFailure) {
            final res = await _jwtTokensRepo.authFailureHandler(failure);
            res.fold(
              (l) {
                if (l is AuthFailure) {
                  emit(_Error(l));
                }
              },
              (r) async {
                add(event);
              },
            );
          } else {
            emit(_Error(failure));
          }
        }, (categories) async {
          log('categories fetched');
          emit(_Loaded(categories));
        });
      },
    );
  }
}
