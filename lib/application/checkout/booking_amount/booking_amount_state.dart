part of 'booking_amount_bloc.dart';

@freezed
class BookingAmountState with _$BookingAmountState {
  const factory BookingAmountState({
    required AmountModel? amount,
    required int tip,
    required String couponCode,
    required bool isLoading,
    required MainFailure? failure,
    required String categoryId,
  }) = _BookingAmountState;
  factory BookingAmountState.initial() => BookingAmountState(
        amount: null,
        tip: 0,
        couponCode: '',
        isLoading: true,
        failure: null,
        categoryId: '',
      );
}
