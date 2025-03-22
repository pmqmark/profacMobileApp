part of 'booking_amount_bloc.dart';

@freezed
class BookingAmountEvent with _$BookingAmountEvent {
  const factory BookingAmountEvent.fetchTotalAmount(AmountBodyModel amountBodyModel) = _FetchTotalAmount;
  const factory BookingAmountEvent.initial(double amount) = _Initial;
}