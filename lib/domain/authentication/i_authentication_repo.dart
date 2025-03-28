import 'package:dartz/dartz.dart';
import 'package:profac/domain/authentication/model/auth_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IAuthenticationRepo {
  Future<Either<MainFailure, void>> sendOTP(String email);
  Future<Either<MainFailure, AuthModel>> verifyOtp(
      {required String otp, required String email});
  Future<Either<MainFailure, void>> logout();
  Future<Either<MainFailure, AuthModel>> googleSignIn();
}

enum AuthenticationType { signIn, signUp }
