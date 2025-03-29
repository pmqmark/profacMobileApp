part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = _Initial;
  const factory VerificationState.loading() = _Loading;
  const factory VerificationState.otpSent() = _OtpSent;
  const factory VerificationState.otpVerified() = _OtpVerified;
  const factory VerificationState.error(MainFailure failure) = _Error;
}
