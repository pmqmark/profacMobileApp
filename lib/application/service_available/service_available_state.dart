part of 'service_available_bloc.dart';

@freezed
class ServiceAvailableState with _$ServiceAvailableState {
  const factory ServiceAvailableState({
    required bool isAvailable,
  }) = _ServiceAvailableState;
  factory ServiceAvailableState.initial() => ServiceAvailableState(isAvailable: true);
}
