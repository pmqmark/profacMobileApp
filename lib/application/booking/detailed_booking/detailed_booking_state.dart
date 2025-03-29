part of 'detailed_booking_bloc.dart';

@freezed
class DetailedBookingState with _$DetailedBookingState {
  const factory DetailedBookingState({
    required bool isLoading,
    required DetailedBookingModel? detailedBookingModel,
    required MainFailure? failure,
  }) = _DetailedBookingState;
  factory DetailedBookingState.initial() => DetailedBookingState(
        isLoading: false,
        detailedBookingModel: null,
        failure: null,
      );
}
