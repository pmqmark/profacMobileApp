part of 'coupons_bloc.dart';

@freezed
class CouponsState with _$CouponsState {
   factory CouponsState({
    required List<CouponModel> coupons,
    required bool isLoading,
    required MainFailure? failure,
    required CouponModel? selectedCoupon,
  }) = _CouponsState;
  factory CouponsState.initial() => CouponsState(
        coupons: [],
        isLoading: false,
        failure: null,
        selectedCoupon: null,
      );
}
