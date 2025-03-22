import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/cart/i_cart_repo.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
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
      log(cartItemModel.toJson().toString());
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
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      }
      {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  int getQuantity(context, CartItemModel cartItemModel) {
    final items = BlocProvider.of<CartItemsBloc>(context).state.cartItems;
    if (items.containsKey(cartItemModel.categoryId)) {
      if (items[cartItemModel.categoryId]!
          .containsKey(cartItemModel.subserviceId)) {
        if (items[cartItemModel.categoryId]![cartItemModel.subserviceId]!
            .containsKey(cartItemModel.optionId)) {
          return items[cartItemModel.categoryId]![cartItemModel.subserviceId]![
              cartItemModel.optionId]!;
        }
      }
    }
    return 0;
  }

  @override
  Future<Either<MainFailure, List<CartModel>>> getCart() async {
    try {
      final response = await getIt<Request>().dio.get(
            ApiEndpoints.cart,
          );
      if (response.statusCode == 200) {
        log(response.data.toString());
        final cart = CartReponseModel.fromJson(response.data);
        return right(cart.cartModels);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<CartModel>>(e);
      }
      return left(const MainFailure.otherFailure());
    }
  }
}
