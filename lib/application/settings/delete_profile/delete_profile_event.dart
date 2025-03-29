part of 'delete_profile_bloc.dart';

@freezed
class DeleteProfileEvent with _$DeleteProfileEvent {
  const factory DeleteProfileEvent.deleteProfile(String email,String otp) = _DeleteProfile;
  const factory DeleteProfileEvent.reset() = _Reset;
}