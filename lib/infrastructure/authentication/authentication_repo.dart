import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/authentication/i_authentication_repo.dart';
import 'package:profac/domain/authentication/model/auth_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: IAuthenticationRepo)
class AuthenticationRepo extends IAuthenticationRepo {
  @override
  Future<Either<MainFailure, void>> sendOTP(String email) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.otp, data: {'email': email});
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
      {required String otp, required String email}) async {
    try {
      log('otp: $otp, mobile: $email');
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.verifyOtp, data: {'otp': otp, 'email': email});

      if (response.statusCode == 200) {
        final authModel = AuthModel.fromJson(response.data);
        authModel.authenticationType = AuthenticationType.signIn;
        return right(authModel);
      } else if (response.statusCode == 201) {
        final authModel = AuthModel.fromJson(response.data);
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
    final respose = await getIt<TokensNKeys>().clearAll();
    if (respose) {
      return right(null);
    } else {
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, AuthModel>> googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        log('no Google account selected', name: 'google sign in');
        return left(
            const MainFailure.otherFailure(message: 'Select a Google account'));
      } else {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        String? token = await FirebaseMessaging.instance.getToken();
        log('token: $token \n idToken:${googleAuth.idToken}',
            name: 'google sign in');
        final response = await getIt<Request>().dio.post(
          ApiEndpoints.googleSignIn,
          data: {
            'idToken': googleAuth.idToken,
            'fcmToken': token,
          },
        );
        log(response.data.toString(), name: 'Google sign in');
        if (response.statusCode == 200) {
          final authModel = AuthModel.fromJson(response.data);
          authModel.authenticationType = AuthenticationType.signIn;
          return right(authModel);
        } else if (response.statusCode == 201) {
          log('new user', name: 'google sign in');
          final authModel = AuthModel.fromJson(response.data);
          authModel.authenticationType = AuthenticationType.signUp;
          return right(authModel);
        } else {
          return left(const MainFailure.clientFailure());
        }
      }
    } catch (e) {
      log(e.toString(), name: 'google sign in');
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.none)) {
        log("no Internet conneciton");
        return left(const MainFailure.noInternetConnection());
      }
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<AuthModel>(e);
      }
      if (e is FirebaseAuthException) {
        return left(const MainFailure.authFailure('Google sign in failed'));
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }
}
