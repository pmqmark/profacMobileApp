part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.reset() = _Reset;
  const factory AuthenticationEvent.sendOTP(String email) = _SendOTP;
  const factory AuthenticationEvent.verifyOTP(
      {required String otp, required String email}) = _VerifyOTP;
  const factory AuthenticationEvent.logout() = _Logout;
  const factory AuthenticationEvent.googleSignIn() = _GoogleSignIn;
}
