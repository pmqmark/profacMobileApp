part of 'delete_profile_bloc.dart';

@freezed
class DeleteProfileState with _$DeleteProfileState {
  const factory DeleteProfileState.initial() = _Initial;
  const factory DeleteProfileState.loading() = _Loading;
  const factory DeleteProfileState.profileDeleted() = _ProfileDeleted;
  const factory DeleteProfileState.error(MainFailure failure) = _Error;
}
