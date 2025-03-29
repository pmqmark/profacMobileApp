import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/booking/i_booking_repo.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/domain/booking/model/detailed_booking_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/services/model/review_model.dart';

@LazySingleton(as: IBookingRepo)
class BookingRepository extends IBookingRepo {
  @override
  Future<Either<MainFailure, BookingResponseModel>> getBookings(
      int? page) async {
    try {
      final response =
          await getIt<Request>().dio.get(ApiEndpoints.getAllBooking);
      if (response.statusCode == 200) {
        return right(BookingResponseModel.fromJson(response.data));
      }
      return left(const MainFailure.clientFailure());
    } catch (e) {
      log(e.toString(), name: 'getBookings');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<BookingResponseModel>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, DetailedBookingModel>> getBookingDetails(
      String bookingId) async {
    try {
      final response = await getIt<Request>()
          .dio
          .get('${ApiEndpoints.getBookingDetails}/$bookingId');
      if (response.statusCode == 200) {
        final model = DetailedBookingModel.fromJson(response.data);
        log(model.toString(), name: 'getBookingDetails');
        return right(model);
      }
      return left(const MainFailure.clientFailure());
    } catch (e) {
      log(e.toString(), name: 'getBookingDetails');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<DetailedBookingModel>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, DetailedBookingModel>> cancelBooking(
      String bookingId) async {
    try {
      log('cancel booking to $bookingId', name: 'cancelBooking');
      final response = await getIt<Request>().dio.patch(
          '${ApiEndpoints.cancelBooking}/$bookingId',
          data: {"status": BookingStatus.cancelled.name});
      if (response.statusCode == 200) {
        final model = DetailedBookingModel.fromJson(response.data);
        log(model.toString(), name: 'getBookingDetails');
        return right(model);
      }
      return left(const MainFailure.clientFailure());
    } catch (e) {
      log(e.toString(), name: 'getBookingDetails');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<DetailedBookingModel>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> addReview(
      ReviewDataModel reviewDataModel) async {
    try {
      log('add review to ${reviewDataModel.toJson()}', name: 'addReview');
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.addReview, data: reviewDataModel.toJson());
      if (response.statusCode == 200|| response.statusCode == 201) {
        return right(null);
      } else {
        return left(MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      return left(MainFailure.clientFailure());
    }
  }
}
