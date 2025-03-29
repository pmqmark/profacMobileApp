part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.reset() = _Reset;
  const factory AddressEvent.setAddress(AddressModel address) = _SetAddress;
  const factory AddressEvent.setLocation(GMapAddress location) = _SetLocation;
  const factory AddressEvent.saveAddress(AddressModel address) = _SaveAddress;
  const factory AddressEvent.manageInitialLocation() = _ManageInitialLocation;
  const factory AddressEvent.changeAddress(AddressModel address) =
      _ChangeAddress;
}
