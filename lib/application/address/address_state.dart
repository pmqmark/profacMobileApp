part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = AddressLoading;
  const factory AddressState.loadedAddress(Address address) = _LoadedAddress;
  const factory AddressState.loadedLocation(GMapAddress address) = LoadedLocation;
}
