import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/checkout/i_checkout_repo.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/checkout/models/checkout_order_model.dart';
import 'package:profac/domain/checkout/models/coupon_model.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';

@LazySingleton(as: ICheckoutRepo)
class CheckoutRep extends ICheckoutRepo {
  @override
  Future<Either<MainFailure, List<CouponModel>>> getCoupons() async {
    try {
      final response = await getIt<Request>().dio.get(ApiEndpoints.coupons);
      if (response.statusCode == 200) {
        final coupons = CouponResponse.fromJson(response.data).coupons;
        return right(coupons);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<CouponModel>>(e);
      }
      log(e.toString(), name: "get checkout");
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, AmountModel>> getAmount(
      AmountBodyModel amountBodyModel) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.fetchTotalAmount, data: amountBodyModel.toJson());
      if (response.statusCode == 200) {
        final amount = AmountModel.fromJson(response.data);
        return right(amount);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<AmountModel>(e);
      }
      log(e.toString(), name: "get checkout");
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<SlotDateModel>>> getSlots(
      String categoryId) async {
    try {
      final locationId = getIt<TokensNKeys>().locationId;
      final response = await getIt<Request>().dio.get(
          "${ApiEndpoints.slots}?categoryId=6797dd74d8eec7fe4c9233e0&locationId=67c576230bde8b8ef25f8d20");
      if (response.statusCode == 200) {
        final result = parseSlotApiResponse(response.data);
        return right(result);
      }
      return left(MainFailure.clientFailure());
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<List<SlotDateModel>>(e);
      }
      return left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> bookService(
      CheckoutOrderModel checkoutOrderModel) async {
    try {
      log(checkoutOrderModel.toJson().toString(), name: "checkout order model");
      final response = await getIt<Request>().dio.post(
            ApiEndpoints.bookService,
            data: checkoutOrderModel.toJson(),
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
      return left(const MainFailure.otherFailure());
    }
  }
}
