part of 'booking_available_bloc.dart';

@freezed
class BookingAvailableEvent with _$BookingAvailableEvent {
  const factory BookingAvailableEvent.checkAvailability({
    required String categoryId,
    required String addressId,
  }) = _CheckAvailability;
}