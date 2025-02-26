import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/localstorage/i_localstorage_repo.dart';
import 'package:profac/domain/profile/i_profile_repo.dart';
import 'package:profac/domain/profile/model/profile_model.dart';
import 'package:profac/main.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepo _profileRepo;
  final ILocalstorageRepo _localstorageRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  ProfileBloc(this._profileRepo, this._localstorageRepo, this._jwtTokensRepo)
      : super(_Initial()) {
    on<_LoadProfile>((event, emit) async {
      emit(const ProfileState.loading());
      final profile = await _profileRepo.getProfile();
      await profile.fold(
        (failure) async {
          if (failure is AuthFailure) {
            final res = await _jwtTokensRepo.authFailureHandler(failure);
            log('handling completed$res');
            res.fold(
              (l) {
                log('failure detected');
                if (l is AuthFailure) {
                  log('auth failure detected');
                  BlocProvider.of<AuthenticationBloc>(
                          navigatorKey.currentContext!)
                      .add(const AuthenticationEvent.logout());
                }
                emit(ProfileState.error(l));
              },
              (r) async {
                add(event);
              },
            );
          } else {
            emit(ProfileState.error(failure));
          }
        },
        (profile) async {
          log('profile fetched :${profile.toString()}');
          emit(ProfileState.profileLoaded(profile));
        },
      );
    });
    on<_UpdateProfile>((event, emit) async {
      emit(const ProfileState.loading());
      final response = await _profileRepo.updateProfile(
        name: event.name,
        mobile: event.phoneNumber,
      );
      await response.fold(
        (l) async {
          final res = await _jwtTokensRepo.authFailureHandler(l);
          log('handling completed$res');
          res.fold(
            (l) {
              log('failure detected');
              if (l is AuthFailure) {
                log('auth failure detected');
                BlocProvider.of<AuthenticationBloc>(
                        navigatorKey.currentContext!)
                    .add(const AuthenticationEvent.logout());
              }
              emit(ProfileState.error(l));
            },
            (r) async {
              add(event);
            },
          );
        },
        (r) async {
          await _localstorageRepo.saveData();
          emit(ProfileState.profileUpdated());
        },
      );
    });
  }
}
