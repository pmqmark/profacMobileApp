import 'package:dartz/dartz.dart';
import 'package:profac/domain/authentication/model/auth_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IAuthenticationRepo {
  Future<Either<MainFailure, void>> sendOTP(int phoneNumber);
  Future<Either<MainFailure, AuthModel>> verifyOtp({required String otp, required int mobileNumber});
  Future<Either<MainFailure, void>> logout();
}

enum AuthenticationType { signIn, signUp }
