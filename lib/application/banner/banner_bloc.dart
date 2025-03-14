import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/banners/i_banners_repo.dart';
import 'package:profac/domain/banners/model/banner_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/main.dart';

part 'banner_event.dart';
part 'banner_state.dart';
part 'banner_bloc.freezed.dart';

@injectable
class BannerBloc extends Bloc<BannerEvent, BannerState> {
  final IBannersRepo bannersRepo;
  final IJwtTokensRepo jwtTokensRepo;
  BannerBloc(this.bannersRepo, this.jwtTokensRepo) : super(_Initial()) {
    on<_GetBanner>((event, emit) async {
      emit(_Loading());
      final result = await bannersRepo.getBanners();
      await result.fold((failure) async {
        if (failure is AuthFailure) {
          final res = await jwtTokensRepo.authFailureHandler(failure);
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
              emit(_Error(l));
            },
            (r) async {
              add(event);
            },
          );
        } else {
          emit(_Error(failure));
        }
      }, (r) {
        emit(_Loaded(r));
      });
    });
  }
}
