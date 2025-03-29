import 'package:dartz/dartz.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/domain/booking/model/detailed_booking_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/services/model/review_model.dart';

abstract class IBookingRepo {
  Future<Either<MainFailure, BookingResponseModel>> getBookings(int? page);
  Future<Either<MainFailure, DetailedBookingModel>> getBookingDetails(
      String bookingId);
  Future<Either<MainFailure, DetailedBookingModel>> cancelBooking(
      String bookingId);
  Future<Either<MainFailure, void>> addReview(
      ReviewDataModel reviewDataModel);
}
