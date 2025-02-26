import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/authentication/i_authentication_repo.dart';
import 'package:profac/domain/authentication/model/auth_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: IAuthenticationRepo)
class AuthenticationRepo extends IAuthenticationRepo {
  @override
  Future<Either<MainFailure, void>> sendOTP(int mobileNumber) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.otp, data: {'mobile': mobileNumber});
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, AuthModel>> verifyOtp(
      {required String otp, required int mobileNumber}) async {
    try {
      log('otp: $otp, mobile: $mobileNumber');
      final response = await getIt<Request>().dio.post(ApiEndpoints.verifyOtp,
          data: {'otp': otp, 'mobile': mobileNumber});
      final authModel = AuthModel.fromJson(response.data);
      if (response.statusCode == 200) {
        authModel.authenticationType = AuthenticationType.signIn;
        return right(authModel);
      } else if (response.statusCode == 201) {
        authModel.authenticationType = AuthenticationType.signUp;
        return right(authModel);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, void>> logout() async {
    final respose = await getIt<JwtTokens>().clearAll();
    if (respose) {
      return right(null);
    } else {
      return left(const MainFailure.otherFailure());
    }
  }
}
