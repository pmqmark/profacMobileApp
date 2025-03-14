import 'package:dartz/dartz.dart';
import 'package:profac/domain/banners/model/banner_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IBannersRepo {
  Future<Either<MainFailure, List<BannerModel>>> getBanners();
}