part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = _Started;
  const factory AddressEvent.setAddress(Address address) = _SetAddress;
  const factory AddressEvent.setLocation(GMapAddress location) = _SetLocation;
}