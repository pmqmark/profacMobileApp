part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.profileLoaded(ProfileModel model) = ProfileLoaded;
  const factory ProfileState.profileUpdated(ProfileModel model) =
      _ProfileUpdated;
  const factory ProfileState.error(MainFailure failure) = _Error;
}
