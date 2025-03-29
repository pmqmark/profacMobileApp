import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/services/i_service_repo.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';

@LazySingleton(as: IServiceRepo)
class ServiceRepo extends IServiceRepo {
  @override
  Future<Either<MainFailure, List<SubServiceModel>>> searchServices(
      String query) async {
    try {
      log('searching for $query', name: 'search query');
      final response = await getIt<Request>()
          .dio
          .get('${ApiEndpoints.getSubServices}?search=$query');
      if (response.statusCode == 200) {
        final List<SubServiceModel> subServices = [];
        response.data['data']['result'].forEach((subService) {
          subServices.add(SubServiceModel.fromJson(subService));
        });
        return Right(subServices);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<SubServiceModel>>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, DetailedSubServiceModel>> getSubServiceById(
      String id) async {
    try {
      final response =
          await getIt<Request>().dio.get('${ApiEndpoints.getSubServices}/$id');
      if (response.statusCode == 200) {
        return Right(DetailedSubServiceModel.fromJson(response.data));
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log('$e', name: 'GET SUB SERVICE BY ID');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<DetailedSubServiceModel>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, List<ReviewModel>>> getReviews(
      String subServiceId) async {
    try {
      final response = await getIt<Request>()
          .dio
          .get('${ApiEndpoints.getReviews}$subServiceId');
      if (response.statusCode == 200) {
        final List<ReviewModel> reviews = [];
        response.data['data']['result'].forEach((review) {
          reviews.add(ReviewModel.fromJson(review));
        });
        return Right(reviews);
      } else {
        return Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log('$e', name: 'GET REVIEWS');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<ReviewModel>>(e);
      } else {
        return Left(MainFailure.serverFailure());
      }
    }
  }
}
