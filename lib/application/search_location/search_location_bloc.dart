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
    // resets the state to initial state
    on<_Started>((event, emit) {
      emit(_Initial());
    });
    // search location by query using gmap api
    on<_SearchLocation>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getGmapAddress(event.query);
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(_Loaded(address)),
      );
    });
    // searching formated address by passing latitute and longitude to gmap api
    on<_SelectLocationLatLng>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getAddressByLatLng(event.address);
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(LoadedLatLng(address)),
      );
    });
    // get current location using geolocator
    on<_GetCurrentLocation>((event, emit) async {
      emit(SearchLocationLoading());
      final result = await addressRepo.getCurrentLocation();
      log("current address: $result");
      result.fold(
        (failure) => emit(_Error(failure)),
        (address) => emit(LoadedLatLng(address)),
      );
    });

    // setting location in the case address is found after searching
    on<_SetLocation>((event, emit) {
      emit(LoadedLatLng(event.address));
    });

  }
  @override
  Future<void> close() async {
    add(const SearchLocationEvent.started());
    await super.close();
  }
}
