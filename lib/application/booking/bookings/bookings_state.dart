part of 'bookings_bloc.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState({
    required List<BookingModel> bookings,
    required bool isLoading,
  required bool isLoadingMore,
    required MainFailure? failure,
    required int page,
  }) = _BookingsState;
  factory BookingsState.initial() => BookingsState(
        bookings: [],
        isLoading: false,
        failure: null,
        page: 1,
        isLoadingMore: false,
      );
}
