part of 'help_and_support_bloc.dart';

@freezed
class HelpAndSupportEvent with _$HelpAndSupportEvent {
  const factory HelpAndSupportEvent.reset() = _Reset;
  const factory HelpAndSupportEvent.fetchHelpAndSupport() = _fetchHelpAndSupport;
}