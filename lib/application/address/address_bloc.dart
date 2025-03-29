import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/service_available/service_available_bloc.dart';
import 'package:profac/domain/address/i_address_repo.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/main.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final IJwtTokensRepo jwtTokensRepo;
  final IAddressRepo addressRepo;
  AddressBloc(this.addressRepo, this.jwtTokensRepo) : super(_Initial()) {
    on<_ChangeAddress>((event, emit) async {
      log("change address", name: "AddressBloc");
      emit(const AddressLoading());
      final LatLng latLng =
          LatLng(event.address.coordinates[1], event.address.coordinates[0]);
      final checkLatLng = await addressRepo.checkServiceLocation(latLng);
      checkLatLng.fold(
        (l) {
          emit(AddressError(l));
        },
        (r) {
          BlocProvider.of<ServiceAvailableBloc>(navigatorKey.currentContext!)
              .add(
            ServiceAvailableEvent.setValue(r.isWithinMaxDist),
          );
          emit(LoadedAddress(event.address));
        },
      );
    });
    on<_SaveAddress>((event, emit) async {
      emit(const AddressLoading());
      log(event.address.toString(), name: "AddressBloc");
      final response = await addressRepo.saveAddress(event.address);
      await response.fold(
        (failure) async {
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
                emit(AddressError(l));
              },
              (r) async {
                add(event);
              },
            );
          } else {
            emit(AddressError(failure));
          }
        },
        (success) {
          BlocProvider.of<ProfileBloc>(navigatorKey.currentContext!)
              .state
              .mapOrNull(
            profileLoaded: (state) {
              final newAddress = event.address;
              add(_ChangeAddress(newAddress));
              final profileModel = state.model;
              profileModel.addressList.add(newAddress);
              BlocProvider.of<ProfileBloc>(navigatorKey.currentContext!)
                  .add(ProfileEvent.updateProfile(profileModel));
            },
          );
          emit(_AddressSaved());
        },
      );
    });

    on<_SetAddress>((event, emit) {
      emit(LoadedAddress(event.address));
    });

    //used to set the location of the address
    on<_SetLocation>((event, emit) {
      log("set location", name: "AddressBloc");
      BlocProvider.of<ProfileBloc>(navigatorKey.currentContext!).state.maybeMap(
        orElse: () {
          log('profile not loaded', name: "AddressBloc");
        },
        profileLoaded: (state) {
          log('profile loaded', name: "AddressBloc");
          final addresses = state.model.addressList;
          if (addresses.isEmpty) {
            log('address is empty', name: "AddressBloc");
            emit(LoadedLocation(event.location));
          } else {
            log('address is not empty', name: "AddressBloc");
            final lat = event.location.lat;
            final lng = event.location.lng;
            AddressModel? nearestAddress;
            for (int i = 0; i < addresses.length; i++) {
              final addressModal = addresses[i];
              log(addressModal.coordinates.toString(), name: "AddressBloc");
              final addressLat = addressModal.coordinates[1];
              final addressLng = addressModal.coordinates[0];
              final distance = (lat - addressLat) * (lat - addressLat) +
                  (lng - addressLng) * (lng - addressLng);
              if (nearestAddress == null) {
                nearestAddress = addressModal;
              } else {
                final nearestLat = nearestAddress.coordinates[1];
                final nearestLng = nearestAddress.coordinates[0];
                final nearestDistance =
                    (lat - nearestLat) * (lat - nearestLat) +
                        (lng - nearestLng) * (lng - nearestLng);
                if (distance < nearestDistance) {
                  nearestAddress = addressModal;
                }
              }
            }
            if (nearestAddress != null) {
              final distance = Geolocator.distanceBetween(lat, lng,
                  nearestAddress.coordinates[1], nearestAddress.coordinates[0]);
              if (distance > 1000) {
                emit(LoadedLocation(event.location));
                return;
              }
              emit(LoadedAddress(nearestAddress));
            } else {
              emit(LoadedLocation(event.location));
            }
          }
        },
      );
    });
    on<_ManageInitialLocation>((event, emit) async {
      emit(AddressLoading());
      final profileState =
          BlocProvider.of<ProfileBloc>(navigatorKey.currentContext!).state;
      profileState.maybeMap(
        orElse: () {
          log('profile not loaded', name: "AddressBloc-_ManageInitialLocation");
        },
        profileLoaded: (state) async {
          log('profile loaded', name: "AddressBloc-_ManageInitialLocation");
          final currentLatLng = await addressRepo.getCurrentLatLng();
          await currentLatLng.fold(
            (l1) async {
              log('error detected at l1',
                  name: "AddressBloc-_ManageInitialLocation");
              emit(AddressError(l1));
            },
            (r1) async {
              final result = await addressRepo.checkServiceLocation(r1);
              await result.fold(
                (l2) {
                  log('error detected at l2',
                      name: "AddressBloc-_ManageInitialLocation");
                  emit(AddressError(l2));
                },
                (r2) async {
                  final LatLng latLng = LatLng(r2.lat, r2.lng);
                  final gaddress = await addressRepo.getAddressByLatLng(latLng);
                  gaddress.fold(
                    (l3) {
                      log('error detected at l3',
                          name: "AddressBloc-_ManageInitialLocation");
                      emit(AddressError(l3));
                    },
                    (r3) {
                      add(_SetLocation(r3));
                    },
                  );
                },
              );
            },
          );
        },
      );
    });
    on<_Reset>((event, emit) {
      emit(_Initial());
    });
  }
}
