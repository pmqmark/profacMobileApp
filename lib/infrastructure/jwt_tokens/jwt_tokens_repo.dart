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
    log("trying to fetch new access token");
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
        final accessToken = response.data['data']['accessToken'];
        final refreshToken = response.data['data']['refreshToken'];
        getIt<JwtTokens>().clearTokens();
        await getIt<JwtTokens>().updateAccesstoken(
            accessToken: accessToken, refreshToken: refreshToken);
        getIt<Request>().updateAccessToken();
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

  @override
  Future<Either<MainFailure, void>> authFailureHandler(
      MainFailure failure) async {
    final response = await fetchNewAccessToken();
    log("auth failure handler: $response");
    return response.fold((l) {
      if (l is AuthFailure) {
        log("auth failure");
        return left(l);
      }
      return left(const MainFailure.clientFailure());
    }, (r) {
      log("access token fetched successfully");
      return right(null);
    });
  }
}
