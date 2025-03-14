part of 'service_available_bloc.dart';

@freezed
class ServiceAvailableEvent with _$ServiceAvailableEvent {
  const factory ServiceAvailableEvent.setValue(bool isAvailable) = _SetValue;
}