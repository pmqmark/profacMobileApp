part of 'search_services_bloc.dart';

@freezed
class SearchServicesEvent with _$SearchServicesEvent {
  const factory SearchServicesEvent.started() = _Started;
  const factory SearchServicesEvent.search(String query) = _Search;
}