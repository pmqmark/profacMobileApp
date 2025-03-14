part of 'detailed_service_bloc.dart';

@freezed
class DetailedServiceState with _$DetailedServiceState {
  const factory DetailedServiceState.initial() = _Initial;
  const factory DetailedServiceState.loading() = _Loading;
  const factory DetailedServiceState.loaded(DetailedSubServiceModel detailedService) = _Loaded;
  const factory DetailedServiceState.error(MainFailure failure) = _Error;
}
