import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/profile/model/profile_model.dart';
import 'package:profac/main.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc() : super(_Initial()) {
    on<_SetLocation>((event, emit) {
      BlocProvider.of<ProfileBloc>(navigatorKey.currentContext!).state.maybeMap(
        orElse: () {
          log('profile not loaded');
        },
        profileLoaded: (state) {
          log('profile loaded');
          final addresses = state.model.addressList;
          if (addresses.isEmpty) {
            log('address is empty');
            emit(LoadedLocation(event.location));
          } else {
            final lat = event.location.lat;
            final lng = event.location.lng;
          }
        },
      );
    });
  }
}
