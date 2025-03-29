part of 'booking_amount_bloc.dart';

@freezed
class BookingAmountEvent with _$BookingAmountEvent {
  const factory BookingAmountEvent.reset() = _Reset;
  const factory BookingAmountEvent.fetchTotalAmount() = _FetchTotalAmount;
  const factory BookingAmountEvent.updateTip(int tip) = _UpdateTip;
  const factory BookingAmountEvent.updateCouponCode(String code) = _UpdateCouponCode;
  const factory BookingAmountEvent.initial(String categoryId) = _Initial;
}