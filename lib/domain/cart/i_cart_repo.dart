import 'package:dartz/dartz.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class ICartRepo {
  Future<Either<MainFailure,void>> updateProduct(CartItemModel cartItemModel);
  Future<Either<MainFailure,void>> deleteProduct(CartItemModel cartItemModel);
}