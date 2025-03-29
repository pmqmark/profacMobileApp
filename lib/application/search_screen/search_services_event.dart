part of 'search_services_bloc.dart';

@freezed
class SearchServicesEvent with _$SearchServicesEvent {
  const factory SearchServicesEvent.reset() = _Reset;
  const factory SearchServicesEvent.search(String query) = _Search;
  const factory SearchServicesEvent.popularAndRecentSearches() = _popularAndRecentSearches;
}