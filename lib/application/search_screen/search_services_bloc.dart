import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/search/i_search_repo.dart';
import 'package:profac/domain/search/model/search_model.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/services/i_service_repo.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/main.dart';

part 'search_services_event.dart';
part 'search_services_state.dart';
part 'search_services_bloc.freezed.dart';

@injectable
class SearchServicesBloc
    extends Bloc<SearchServicesEvent, SearchServicesState> {
  final ISearchRepo _serviceRepo;
  SearchServicesBloc(this._serviceRepo) : super(_Initial()) {
      on<_Reset>((event, emit) {
      emit(const _Initial());
      });
    on<_Search>((event, emit) async {
      emit(const _Loading());
      final result = await _serviceRepo.search(event.query);
      result.fold(
        (failure) {
          emit(_Error(failure));
        },
        (subServices) {
          emit(_Loaded(subServices));
        },
      );
    });
    on<_popularAndRecentSearches>((event, emit) async {
      emit(const _Loading());
      final popularSearches = await _serviceRepo.popularSearches();
      await popularSearches.fold(
        (failure) async {
          final recentSearches = await _serviceRepo.recentSearches();
          recentSearches.fold(
            (failure2) {
              emit(_Error(failure2));
            },
            (recentSubServices) {
              emit(
                _RecentAndPopularLoaded(
                    popularSearches: [], recentSearches: recentSubServices),
              );
            },
          );
        },
        (subServices) async {
          final recentSearches = await _serviceRepo.recentSearches();
          recentSearches.fold(
            (failure2) {
              emit(_Error(failure2));
            },
            (recentSubServices) {
              emit(_RecentAndPopularLoaded(
                  popularSearches: subServices,
                  recentSearches: recentSubServices));
            },
          );
        },
      );
    });
  }
}
