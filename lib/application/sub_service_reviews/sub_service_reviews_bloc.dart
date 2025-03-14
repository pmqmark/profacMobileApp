import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/services/i_service_repo.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/main.dart';

part 'sub_service_reviews_event.dart';
part 'sub_service_reviews_state.dart';
part 'sub_service_reviews_bloc.freezed.dart';

@injectable
class SubServiceReviewsBloc
    extends Bloc<SubServiceReviewsEvent, SubServiceReviewsState> {
  final IServiceRepo _serviceRepo;
  final IJwtTokensRepo _jwtTokensRepo;
  SubServiceReviewsBloc(this._jwtTokensRepo, this._serviceRepo)
      : super(SubServiceReviewsState.initial()) {
    on<_GetReviews>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _serviceRepo.getReviews(event.subServiceId);
      await result.fold((failure) async {
        if (failure is AuthFailure) {
          final res = await _jwtTokensRepo.authFailureHandler(failure);
          log('handling completed$res', name: 'reviews bloc');
          res.fold(
            (l) {
              log('failure detected');
              if (l is AuthFailure) {
                log('auth failure detected');
                BlocProvider.of<AuthenticationBloc>(
                        navigatorKey.currentContext!)
                    .add(const AuthenticationEvent.logout());
              }
              emit(state.copyWith(
                isLoading: false,
                failureOrReviews: some(left(l)),
              ));
            },
            (r) async {
              add(event);
            },
          );
        } else {
          emit(state.copyWith(
            isLoading: false,
            failureOrReviews: some(left(failure)),
          ));
        }
      }, (r) {
        emit(state.copyWith(
          isLoading: false,
          reviews: r,
          failureOrReviews: some(right(())),
        ));
      });
    });
  }
}
