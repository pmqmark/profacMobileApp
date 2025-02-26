import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/profile/model/profile_model.dart';

abstract class IProfileRepo {
  Future<Either<MainFailure, void>> updateProfile({
    String? name,
    String? mobile,
  });
  Future<Either<MainFailure,ProfileModel>> getProfile();
}
