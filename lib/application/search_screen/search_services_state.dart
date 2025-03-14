part of 'search_services_bloc.dart';

@freezed
class SearchServicesState with _$SearchServicesState {
  const factory SearchServicesState.initial() = _Initial;
  const factory SearchServicesState.loading() = _Loading;
  const factory SearchServicesState.loaded(List<SubServiceModel> subServices) = _Loaded;
  const factory SearchServicesState.error(MainFailure failure) = _Error;
}
