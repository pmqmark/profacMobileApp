import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/address/i_address_repo.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/failure.dart';

part 'search_location_event.dart';
part 'search_location_state.dart';
part 'search_location_bloc.freezed.dart';

@injectable
class SearchLocationBloc
    extends Bloc<SearchLocationEvent, SearchLocationState> {
  IAddressRepo addressRepo;
  SearchLocationBloc(this.addressRepo) : super(_Initial()) {
    on<_Started>((event, emit) {
      emit(_Initial());
    });
    on<_SearchLocation>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getAddress(event.query);
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(_Loaded(address)),
      );
    });
    on<_SelectLocationLatLng>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getAddressByLatLng(event.address);
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(_LoadedLatLng(address)),
      );
    });
    on<_GetCurrentLocation>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getCurrentAddress();
      log("current address is $result");
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(_LoadedLatLng(address)),
      );
    });
    on<_SetLocation>((event, emit) {
      emit(_LoadedLatLng(event.address));
    });
  }
  @override
  Future<void> close() async {
    add(const SearchLocationEvent.started());
    await super.close();
  }
}
