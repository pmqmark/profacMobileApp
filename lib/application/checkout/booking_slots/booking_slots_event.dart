part of 'booking_slots_bloc.dart';

@freezed
class BookingSlotsEvent with _$BookingSlotsEvent {
  const factory BookingSlotsEvent.reset() = _Reset;
  const factory BookingSlotsEvent.getSlots(String categoryId) = _GetSlots;
}