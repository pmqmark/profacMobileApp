part of 'coupons_bloc.dart';

@freezed
class CouponsEvent with _$CouponsEvent {
  const factory CouponsEvent.reset() = _Reset;
  const factory CouponsEvent.getCoupons() = _GetCoupons;
  const factory CouponsEvent.selectCoupon(CouponModel coupon) = _SelectCoupon;
  const factory CouponsEvent.removeCoupon() = _RemoveCoupon;
}