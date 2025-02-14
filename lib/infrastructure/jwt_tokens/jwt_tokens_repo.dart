import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: IJwtTokensRepo)
class JwtTokensRepo extends IJwtTokensRepo {
  @override
  Future<Either<MainFailure, void>> fetchNewAccessToken() async {
    getIt<JwtTokens>().clearAccessToken();
    final data = {
      "refreshToken": getIt<JwtTokens>().refreshToken,
    };
    try {
      final response = await getIt<Request>().dio.post(
            ApiEndpoints.updateAccessToken,
            data: data.map((key, value) => MapEntry(key, value.toString())),
            options: Options(
              contentType: Headers.formUrlEncodedContentType,
              responseType: ResponseType.json,
            ),
          );
      if (response.statusCode == 200) {
        final accessToken = AccessTokenModel.fromJson(response.data);
        getIt<JwtTokens>()
            .updateAccesstoken(accessToken: accessToken.accessToken);

        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } on DioException catch (e) {
      return ApiFailureHandler().handleDioError<void>(e);
    } catch (e) {
      return left(const MainFailure.otherFailure());
    }
  }
}

class AccessTokenModel {
  final String accessToken;

  AccessTokenModel({required this.accessToken});

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) {
    return AccessTokenModel(accessToken: json['accessToken']);
  }
}
