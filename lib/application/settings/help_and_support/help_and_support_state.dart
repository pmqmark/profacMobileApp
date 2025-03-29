part of 'help_and_support_bloc.dart';

@freezed
class HelpAndSupportState with _$HelpAndSupportState {
  const factory HelpAndSupportState.initial() = _Initial;
  const factory HelpAndSupportState.loading() = HelpAndSupportLoading;
  const factory HelpAndSupportState.loaded(List<HelpTopicModel> helpTopics) =
      HelpAndSupportLoaded;
  const factory HelpAndSupportState.error(MainFailure failure) = _Error;
}
