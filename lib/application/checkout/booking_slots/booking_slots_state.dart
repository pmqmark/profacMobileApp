part of 'booking_slots_bloc.dart';

@freezed
class BookingSlotsState with _$BookingSlotsState {
  const factory BookingSlotsState({
    required List<SlotDateModel> bookingSlots,
    required bool isLoading,
    required MainFailure? failure,
  }) = _BookingSlotsState;

  factory BookingSlotsState.initial() => BookingSlotsState(
        bookingSlots: [],
        isLoading: false,
        failure: null,
      );
}
