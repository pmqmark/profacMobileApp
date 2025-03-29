import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/settings/delete_profile/i_delete_profile_repo.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';

@LazySingleton(as: IDeleteProfileRepo)
class DeletePofileRepo extends IDeleteProfileRepo {
  @override
  Future<Either<MainFailure, void>> deleteProfile({
    required String email,
    required String otp,
  }) async {
    try {
      log('deleteProfile to $email ,otp: $otp', name: 'deleteProfile');
      final response = await getIt<Request>().dio.delete(
          ApiEndpoints.deleteProfile + getIt<TokensNKeys>().userId,
          data: {'email': email, 'otp': otp});
      log('deleteProfile response: ${response.data}');
      if (response.statusCode == 200) {
        return right(null);
      }
      return left(const MainFailure.clientFailure());
    } catch (e) {
      log('deleteProfile error: $e', name: 'DeleteProfileRepo ');
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }
}
