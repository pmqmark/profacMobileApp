import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/verification/i_verification_repo.dart';

@LazySingleton(as: IVerificationRepo)
class VerificationRepo extends IVerificationRepo {
  @override
  Future<Either<MainFailure, void>> sendOtp(String email) async {
    try {
      log(
        'sendOtp to $email',
        name: 'sendOtp',
      );
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.sendOtp, data: {'email': email});
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> verifyOtp(String email, String otp) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.verifyOtp, data: {'email': email, 'otp': otp});
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log('verifyOtp error: $e', name: 'Verification repo ');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }
}
