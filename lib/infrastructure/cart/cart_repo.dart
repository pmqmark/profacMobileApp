import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/cart/i_cart_repo.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: ICartRepo)
class CartRepo extends ICartRepo {
  @override
  Future<Either<MainFailure, void>> updateProduct(
      CartItemModel cartItemModel) async {
    try {
      final response = await getIt<Request>().dio.put(
            ApiEndpoints.cart,
            data: cartItemModel.toJson(),
          );
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, void>> deleteProduct(CartItemModel cartItemModel) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }
}
