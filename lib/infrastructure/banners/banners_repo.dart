import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/banners/i_banners_repo.dart';
import 'package:profac/domain/banners/model/banner_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
@LazySingleton(as: IBannersRepo)
class BannersRepo extends IBannersRepo {
  @override
  Future<Either<MainFailure, List<BannerModel>>> getBanners() async{
    try {
      final response = await getIt<Request>().dio.get(ApiEndpoints.banners);
      if (response.statusCode == 200) {
        final bannerresponse = BannerResponse.fromJson(response.data);
        return right(bannerresponse.bannerModels);
      }
      return left(const MainFailure.clientFailure());
    } catch (e) {
      if (e is DioException) {
        return  ApiFailureHandler().handleDioError<List<BannerModel>>(e);
      }
      log(e.toString(), name: "get banners");
      return left(const MainFailure.otherFailure());
    }
  }
  
}