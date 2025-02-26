import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/profile/i_profile_repo.dart';
import 'package:profac/domain/profile/model/profile_model.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: IProfileRepo)
class ProfileRepo extends IProfileRepo {
  @override
  Future<Either<MainFailure, void>> updateProfile({
    String? name,
    String? mobile,
  }) async {
    try {
      Object? data;
      if (name != null && mobile != null) {
        data = {
          'name': name,
          'mobile': mobile,
        };
      } else if (name != null) {
        data = {
          'name': name,
        };
      } else if (mobile != null) {
        data = {
          'mobile': mobile,
        };
      }
      final response = await getIt<Request>().dio.put(
            "${ApiEndpoints.profile}/${getIt<JwtTokens>().userId}",
            data: data,
          );
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
  Future<Either<MainFailure, ProfileModel>> getProfile() async {
    try {
      final response = await getIt<Request>()
          .dio
          .get("${ApiEndpoints.profile}/${getIt<JwtTokens>().userId}");
      if (response.statusCode == 200) {
        final ProfileModel profileModel = ProfileModel.fromJson(response.data);
        return right(profileModel);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<ProfileModel>(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }
}
