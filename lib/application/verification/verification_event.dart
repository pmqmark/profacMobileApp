part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.sendOtp(String email) = _SendOtp;
  const factory VerificationEvent.verifyOtp(
      {required String email, required String otp}) = _VerifyOtp;
  const factory VerificationEvent.reset() = _Reset;
}
