part of 'booking_amount_bloc.dart';

@freezed
class BookingAmountState with _$BookingAmountState {
  const factory BookingAmountState({
    required double amount,
    required int tip,
    required bool isLoading,
    required MainFailure? failure,
  }) = _BookingAmountState;
  factory BookingAmountState.initial() => BookingAmountState(
        amount: 0,
        tip: 0,
        isLoading: true,
        failure: null,
      );
}
