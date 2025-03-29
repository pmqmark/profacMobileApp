part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.reset() = _Reset;
  const factory ProfileEvent.loadProfile() = _LoadProfile;
  const factory ProfileEvent.updateProfileFields({
    String? name,
    String? phoneNumber,
    String? email,
  }) = _UpdateProfileFields;
  //after updating the profile, we need to update the profile state with the new profile
  const factory ProfileEvent.updateProfile(ProfileModel profile) =
      _UpdateProfile;
}
