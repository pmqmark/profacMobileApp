import 'package:dartz/dartz.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/checkout/models/checkout_order_model.dart';
import 'package:profac/domain/checkout/models/coupon_model.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class ICheckoutRepo {
  Future<Either<MainFailure, List<CouponModel>>> getCoupons();
  Future<Either<MainFailure, AmountModel>> getAmount(
      AmountBodyModel amountBodyModel);
  Future<Either<MainFailure, List<SlotDateModel>>> getSlots(String categoryId);
  Future<Either<MainFailure, void>> bookService(CheckoutOrderModel checkoutOrderModel);
}
