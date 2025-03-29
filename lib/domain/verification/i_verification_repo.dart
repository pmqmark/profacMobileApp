import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IVerificationRepo {
  Future<Either<MainFailure, void>> sendOtp(String email);
  Future<Either<MainFailure, void>> verifyOtp(String email, String otp);
}
