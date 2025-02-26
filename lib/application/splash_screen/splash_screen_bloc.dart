import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/localstorage/i_localstorage_repo.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';
part 'splash_screen_bloc.freezed.dart';

@injectable
class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  final ILocalstorageRepo _localstorageRepo;
  SplashScreenBloc(this._localstorageRepo) : super(_Initial()) {
    on<_CheckIfAuthenticated>((event, emit) async {
      final stopwatch = Stopwatch()..start();
      final isAuthenticated = await _localstorageRepo.getData();
      log('isAuthenticated: $isAuthenticated');
      stopwatch.stop();
      log('Time elapsed to check local storage: ${stopwatch.elapsed.inMilliseconds}');
      if (stopwatch.elapsed.inMilliseconds < 1000) {
        await Future.delayed(
            Duration(milliseconds: 1000 - stopwatch.elapsed.inMilliseconds));
      }
      if (isAuthenticated) {
        emit(const _Authenticated());
      } else {
        emit(const _Unauthenticated());
      }
    });
  }
}
