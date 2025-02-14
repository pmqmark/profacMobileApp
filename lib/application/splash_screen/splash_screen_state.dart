part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.initial() = _Initial;
  const factory SplashScreenState.authenticated() = _Authenticated;
  const factory SplashScreenState.unauthenticated() = _Unauthenticated;
}
