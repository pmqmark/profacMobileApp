part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = AuthLoading;
  const factory AuthenticationState.otpSent(String email) = _OtpSent;
  const factory AuthenticationState.otpVerified(
      {required AuthenticationType type, String? name}) = _OtpVerified;
  const factory AuthenticationState.error(MainFailure failure) = _Error;
  const factory AuthenticationState.verificationError(MainFailure failure) =
      _VerificationError;
  const factory AuthenticationState.logingOut() = _LogingOut;
}
