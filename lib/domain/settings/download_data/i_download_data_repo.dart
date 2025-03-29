import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IDownloadDataRepo {
  Future<Either<MainFailure, void>> downloadData(String email);
}
