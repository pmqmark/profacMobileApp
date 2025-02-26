import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:profac/core/base_url.dart';
import 'package:profac/domain/di/injectable.dart';

import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';

class Request {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  void clearAccessToken() {
    dio.options.headers['Authorization'] = null;
  }

  void updateAccessToken() {
    final accessToken = getIt<JwtTokens>().accessToken;
    dio.options.headers['Authorization'] = 'Bearer $accessToken';
    log(getIt<Request>().dio.options.headers['Authorization']);
  }
}
