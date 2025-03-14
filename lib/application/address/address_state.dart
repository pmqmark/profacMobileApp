part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = AddressLoading;
  const factory AddressState.error(MainFailure error) = AddressError;
  const factory AddressState.addressSaved() = _AddressSaved;
  const factory AddressState.loadedAddress(AddressModel address) =
      LoadedAddress;
  const factory AddressState.loadedLocation(GMapAddress address) =
      LoadedLocation;
}
