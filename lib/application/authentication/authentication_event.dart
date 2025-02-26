part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _Started;
  const factory AuthenticationEvent.sendOTP(int phoneNumber) = _SendOTP;
  const factory AuthenticationEvent.verifyOTP(
      {required String otp, required int mobileNumber}) = _VerifyOTP;
  const factory AuthenticationEvent.logout() = _Logout;
}
