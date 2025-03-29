part of 'detailed_booking_bloc.dart';

@freezed
class DetailedBookingEvent with _$DetailedBookingEvent {
  const factory DetailedBookingEvent.reset() = _Reset;
  const factory DetailedBookingEvent.getDeailedBooking(String bookingId) = _GetDeailedBooking;
  const factory DetailedBookingEvent.cancelBooking(String bookingId) = _CancelBooking;
}