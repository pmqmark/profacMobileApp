import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/authentication/i_authentication_repo.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/localstorage/i_localstorage_repo.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/main.dart';
import 'package:profac/presentation/authentication/login_screen/login_screen.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthenticationRepo _authenticationRepo;
  final ILocalstorageRepo _localstorageRepo;
  AuthenticationBloc(this._authenticationRepo, this._localstorageRepo)
      : super(_Initial()) {
    on<_SendOTP>((event, emit) async {
      emit(const AuthenticationState.loading());
      final response = await _authenticationRepo.sendOTP(event.phoneNumber);
      log('send otp api completed$response');
      response.fold(
        (l) => emit(AuthenticationState.error(l)),
        (r) => emit(AuthenticationState.otpSent(event.phoneNumber)),
      );
    });
    on<_VerifyOTP>((event, emit) async {
      emit(const AuthenticationState.loading());
      final response = await _authenticationRepo.verifyOtp(
          otp: event.otp, mobileNumber: event.mobileNumber);
      log('verify otp api completed$response');
      await response.fold(
        (l) {
          emit(AuthenticationState.verificationError(l));
        },
        (r) async {
          getIt<JwtTokens>().saveTokens(
              accessToken: r.accessToken,
              refreshToken: r.refreshToken,
              userId: r.userId);
          getIt<Request>().updateAccessToken();
          if (r.authenticationType == AuthenticationType.signIn) {
            await _localstorageRepo.saveData();
          }
          emit(AuthenticationState.otpVerified(r.authenticationType));
        },
      );
    });
    on<_Logout>((event, emit) async {
      log('logout event');
      emit(const AuthenticationState.loading());
      final response = _authenticationRepo.logout();
      await response.then((value) {
        value.fold(
          (l) {
            emit(AuthenticationState.error(l));
          },
          (r) {
            
            Navigator.pushAndRemoveUntil(
              navigatorKey.currentContext!,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
              (route) => false,
            );
            emit(AuthenticationState.initial());
          },
        );
      });
    });
  }
}
