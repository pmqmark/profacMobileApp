part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.loadProfile() = _LoadProfile;
  const factory ProfileEvent.updateProfileFields({
     String? name,
     String? phoneNumber,
     String? email,
  }) = _UpdateProfileFields;
  const factory ProfileEvent.updateProfile(ProfileModel profile) = _UpdateProfile;
}