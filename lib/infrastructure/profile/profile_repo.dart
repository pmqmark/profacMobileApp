import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/profile/i_profile_repo.dart';
import 'package:profac/domain/profile/model/profile_model.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: IProfileRepo)
class ProfileRepo extends IProfileRepo {
  @override
  Future<Either<MainFailure, ProfileModel>> updateProfile({
    String? name,
    String? mobile,
    String? email,
  }) async {
    try {
      Map data = {};
      if (name != null) {
        data['name'] = name;
      }
      if (mobile != null) {
        data['mobile'] = mobile;
      }
      if (email != null) {
        data['email'] = email;
      }
      log(data.toString(), name: "update-rofile");
      final response = await getIt<Request>().dio.put(
            "${ApiEndpoints.profile}/${getIt<TokensNKeys>().userId}",
            data: data as Object,
          );
      if (response.statusCode == 200) {
        final ProfileModel profileModel = ProfileModel.fromJson(response.data);
        return right(profileModel);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString(), name: "update profile");
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
          .get("${ApiEndpoints.profile}/${getIt<TokensNKeys>().userId}");
      if (response.statusCode == 200) {
        final ProfileModel profileModel = ProfileModel.fromJson(response.data);
        return right(profileModel);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString(), name: "get profile");
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<ProfileModel>(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }
}
