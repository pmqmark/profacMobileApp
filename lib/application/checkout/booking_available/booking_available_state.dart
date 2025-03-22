part of 'booking_available_bloc.dart';

@freezed
class BookingAvailableState with _$BookingAvailableState {
  const factory BookingAvailableState.initial() = _Initial;
  const factory BookingAvailableState.loading() = _Loading;
  const factory BookingAvailableState.loaded({required bool isAvailable}) = _Loaded;
  const factory BookingAvailableState.error(MainFailure failure) = _Error;
}
