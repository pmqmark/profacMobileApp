part of 'bookings_bloc.dart';

@freezed
class BookingsEvent with _$BookingsEvent {
  const factory BookingsEvent.reset() = _Reset;
  const factory BookingsEvent.getAllBookings() = _GetAllBookings;
  const factory BookingsEvent.getMoreBookings() = _GetMoreBookings;

}