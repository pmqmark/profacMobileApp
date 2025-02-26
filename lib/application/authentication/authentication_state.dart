part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.otpSent(int mobileNumber) = _OtpSent;
  const factory AuthenticationState.otpVerified(AuthenticationType type) =
      _OtpVerified;
  const factory AuthenticationState.error(MainFailure failure) = _Error;
  const factory AuthenticationState.verificationError(MainFailure failure) =
      _VerificationError;
}
