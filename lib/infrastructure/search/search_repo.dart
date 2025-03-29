import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/search/i_search_repo.dart';
import 'package:profac/domain/search/model/search_model.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepo extends ISearchRepo {
  @override
  Future<
      Either<MainFailure,
          List<Either<SearchSubServiceModel, SearchCategoryModel>>>> search(
      String query) async {
    try {
      final response = await getIt<Request>()
          .dio
          .get("${ApiEndpoints.search}?search=$query");
      if (response.statusCode == 200) {
        final result = SearchResponseModel.fromJson(response.data);
        return Right(result.searchResults);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<
            List<Either<SearchSubServiceModel, SearchCategoryModel>>>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }

  @override
  Future<
          Either<MainFailure,
              List<Either<SearchSubServiceModel, SearchCategoryModel>>>>
      popularSearches() async {
    try {
      final response =
          await getIt<Request>().dio.get(ApiEndpoints.popularSearches);
      if (response.statusCode == 200) {
        final result = SearchResponseModel.fromJson(response.data);
        return Right(result.searchResults);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<
            List<Either<SearchSubServiceModel, SearchCategoryModel>>>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }

  @override
  Future<
          Either<MainFailure,
              List<Either<SearchSubServiceModel, SearchCategoryModel>>>>
      recentSearches() async {
    try {
      final response =
          await getIt<Request>().dio.get(ApiEndpoints.recentSearches);
      if (response.statusCode == 200) {
        final result = SearchResponseModel.fromJson(response.data);
        return Right(result.searchResults);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<
            List<Either<SearchSubServiceModel, SearchCategoryModel>>>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }
}
