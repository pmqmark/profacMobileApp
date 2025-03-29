import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IDeleteProfileRepo {
  Future<Either<MainFailure, void>> deleteProfile({
    required String email,
    required String otp,
  });
}