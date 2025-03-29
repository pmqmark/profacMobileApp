import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/settings/help_and_support/i_help_and_support_repo.dart';
import 'package:profac/domain/settings/help_and_support/model/help_and_support_model.dart';

@LazySingleton(as: IHelpAndSupportRepo)
class HelpAndSupportRepo extends IHelpAndSupportRepo {
  @override
  Future<Either<MainFailure, List<HelpTopicModel>>> getHelpAndSupport() async {
    try {
      final response =
          await getIt<Request>().dio.get(ApiEndpoints.helpAndSupport);
      if (response.statusCode == 200) {
        final HelpAndSupportResponseModel helpAndSupportResponseModel =
            HelpAndSupportResponseModel.fromJson(response.data);
        return right(helpAndSupportResponseModel.result);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<HelpTopicModel>>(e);
      }
      return left(const MainFailure.clientFailure());
    }
  }
}
