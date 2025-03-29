part of 'search_location_bloc.dart';

@freezed
class SearchLocationEvent with _$SearchLocationEvent {
  const factory SearchLocationEvent.reset() = _Reset;
  const factory SearchLocationEvent.searchLocation(String query) = _SearchLocation;
  const factory SearchLocationEvent.selectLocationLatLng(LatLng address) = _SelectLocationLatLng;
  const factory SearchLocationEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory SearchLocationEvent.setLocation(GMapAddress address) = _SetLocation;

}