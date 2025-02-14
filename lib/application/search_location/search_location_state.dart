part of 'search_location_bloc.dart';

@freezed
class SearchLocationState with _$SearchLocationState {
  const factory SearchLocationState.initial() = _Initial;
  const factory SearchLocationState.loading() = SearchLocationLoading;
  const factory SearchLocationState.loaded(GMapLocationAddressModel address) = _Loaded;
  const factory SearchLocationState.loadedLatLng(GMapAddress? address) = _LoadedLatLng;
  const factory SearchLocationState.error(MainFailure failure) = _Error;
}
