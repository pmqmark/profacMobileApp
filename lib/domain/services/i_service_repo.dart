import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';

abstract class IServiceRepo {
  Future<Either<MainFailure, List<SubServiceModel>>> searchServices(
      String query);
  Future<Either<MainFailure, DetailedSubServiceModel>> getSubServiceById(String id);
  Future<Either<MainFailure, List<ReviewModel>>> getReviews(String subServiceId);
}
