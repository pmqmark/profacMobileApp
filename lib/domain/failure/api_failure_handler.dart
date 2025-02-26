import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ApiFailureHandler {
  Future<Either<MainFailure, T>> handleDioError<T>(DioException e) async {
    log("DioException: ${e.message} ${T.toString()}");
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      log("no Internet conneciton");
      return left(const MainFailure.noInternetConnection());
    }
    if (e.response?.statusCode == 400 || e.response?.statusCode == 404) {
      return left(const MainFailure.otherFailure());
    } else if (e.response?.statusCode == 401) {
      return left(const MainFailure.authFailure("Unauthorized"));
    } else if (e.response?.statusCode == 500 ||
        e.response?.statusCode == 501 ||
        e.response?.statusCode == 502) {
      return left(const MainFailure.serverFailure());
    } else if (e is SocketException) {
      return left(const MainFailure.clientFailure());
    } else {
      return left(const MainFailure.clientFailure());
    }
  }
}
