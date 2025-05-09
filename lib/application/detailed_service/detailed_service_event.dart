part of 'detailed_service_bloc.dart';

@freezed
class DetailedServiceEvent with _$DetailedServiceEvent {
  const factory DetailedServiceEvent.reset() = _Reset;
  const factory DetailedServiceEvent.getSubServiceById(String subServiceId) = _GetSubServiceById;
}