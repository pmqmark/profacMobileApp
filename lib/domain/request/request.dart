import 'package:dio/dio.dart';
import 'package:profac/core/base_url.dart';
import 'package:profac/domain/di/injectable.dart';

import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

class Request {
  String accessToken = '';
  final CookieJar cookieJar = CookieJar();
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  Request() {
    dio.interceptors.add(CookieManager(cookieJar));
    accessToken.isNotEmpty
        ? dio.interceptors.add(InterceptorsWrapper(
            onRequest: (options, handler) {
              options.headers['Authorization'] = 'Bearer $accessToken';
              return handler.next(options);
            },
          ))
        : null;
  }
  
  void clearAccessToken() {
    accessToken = '';
  }

  void updateAccessToken() {
    accessToken = getIt<JwtTokens>().accessToken;
  }
}
