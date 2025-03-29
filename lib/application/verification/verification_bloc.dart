import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/verification/i_verification_repo.dart';

part 'verification_event.dart';
part 'verification_state.dart';
part 'verification_bloc.freezed.dart';

@injectable
class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final IVerificationRepo _verificationRepo;
  VerificationBloc(this._verificationRepo) : super(_Initial()) {
    on<_SendOtp>((event, emit) async {
      emit(_Loading());
      final result = await _verificationRepo.sendOtp(event.email);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_OtpSent()),
      );
    });
    on<_VerifyOtp>((event, emit) async {
      emit(_Loading());
      final result = await _verificationRepo.verifyOtp(event.email, event.otp);
      log('result: $result');
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_OtpVerified()),
      );
    });
    on<_Reset>((event, emit) {
      emit(_Initial());
    });
  }
}
