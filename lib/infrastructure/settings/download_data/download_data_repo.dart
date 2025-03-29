import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/settings/download_data/i_download_data_repo.dart';

@LazySingleton(as: IDownloadDataRepo)
class DownloadDataRepo extends IDownloadDataRepo {
  @override
  Future<Either<MainFailure, void>> downloadData(String email) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.downloadData, data: {'email': email});
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }
}
