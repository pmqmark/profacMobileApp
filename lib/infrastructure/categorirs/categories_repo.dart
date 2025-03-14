import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/categories/i_category_repo.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: ICategoryRepo)
class CategoriesRepo extends ICategoryRepo {
  @override
  Future<Either<MainFailure, List<CategoryGroupModel>>>
      getCategoryGroups() async {
    try {
      final response =
          await getIt<Request>().dio.get(ApiEndpoints.getAllCategoryGroups);
      if (response.statusCode == 200) {
        final CategoryGroupResponse categoryGroupResponse =
            CategoryGroupResponse.fromJson(response.data);
        return Right(categoryGroupResponse.result);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<CategoryGroupModel>>(e);
      } else {
        return Left(MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, List<CategoryModel>>> getAllCategoris() async {
    try {
      final response = await getIt<Request>().dio.get(ApiEndpoints.getCategory);
      if (response.statusCode == 200) {
        final CategoryModelResponse categoryModelResponse =
            CategoryModelResponse.fromJson(response.data);
        return Right(categoryModelResponse.data.result);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<CategoryModel>>(e);
      } else {
        return Left(MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, CategoryModel>> getCategoruById(
      String categoryId) async {
    try {
      log("category id:$categoryId", name: 'get category by id');
      final response = await getIt<Request>()
          .dio
          .get('${ApiEndpoints.getCategory}/$categoryId');
      if (response.statusCode == 200) {
        final CategoryModel categoryModel =
            CategoryModel.fromJson(response.data);
        return Right(categoryModel);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<CategoryModel>(e);
      } else {
        return Left(MainFailure.otherFailure());
      }
    }
  }
}
