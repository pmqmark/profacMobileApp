import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/profile/model/profile_model.dart';

abstract class IProfileRepo {
  Future<Either<MainFailure, ProfileModel>> updateProfile({
    String? name,
    String? mobile,
    String? email,
  });
  Future<Either<MainFailure,ProfileModel>> getProfile();
}
