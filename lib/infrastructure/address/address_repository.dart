import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/core/base_url.dart';
import 'package:profac/domain/address/i_address_repo.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/address/model/check_lat_lng_model.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';

@LazySingleton(as: IAddressRepo)
class AddressRepository extends IAddressRepo {
  @override
  Future<Either<MainFailure, GMapLocationAddressModel>> getGmapAddress(
      String query) async {
    try {
      final response = await Dio().get(
        'https://maps.googleapis.com/maps/api/place/textsearch/json?query=$query&key=$googleMapsApiKey',
      );
      if (response.statusCode == 200) {
        log(response.data.toString());
        final address = GMapLocationAddressModel.fromJson(response.data);
        return right(address);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } on DioException catch (e) {
      return ApiFailureHandler().handleDioError<GMapLocationAddressModel>(e);
    } catch (e) {
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, GMapAddress>> getAddressByLatLng(
      LatLng latLng) async {
    try {
      final response = await Dio().get(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${latLng.latitude},${latLng.longitude}&key=$googleMapsApiKey',
      );
      if (response.statusCode == 200) {
        final address = GMapLocationAddressLatLngModel.fromJson(response.data);
        if (address.result == null) {
          return left(const MainFailure.clientFailure());
        }
        return right(address.result!);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } on DioException catch (e) {
      log(e.toString(), name: "get address by lat long");
      return ApiFailureHandler().handleDioError<GMapAddress>(e);
    } catch (e) {
      log(e.toString(), name: "get address by lat long");
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, GMapAddress>> getCurrentLocation() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) {
      return left(const MainFailure.permissionFailure());
    }
    try {
      final position = await Geolocator.getCurrentPosition();
      return await getAddressByLatLng(
          LatLng(position.latitude, position.longitude));
    } catch (e) {
      log(e.toString(), name: "get current location");
      final isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();
      if (!isLocationServiceEnabled) {
        return left(const MainFailure.locationOff());
      }
      return left(const MainFailure.otherFailure());
    }
  }

  Future<bool> _handleLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return false;
      }
    }
    return true;
  }

  @override
  Future<Either<MainFailure, void>> saveAddress(AddressModel address) async {
    try {
      final response = await getIt<Request>().dio.post(
            ApiEndpoints.address,
            data: address.toJson(),
          );
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<void>(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, CheckLatLngModel>> checkServiceLocation(
      LatLng latLng) async {
    try {
      final response = await getIt<Request>().dio.post(
        ApiEndpoints.checkServiceLocation,
        data: {
          'latitude': latLng.latitude,
          'longitude': latLng.longitude,
        },
      );
      if (response.statusCode == 200) {
        final data = CheckLatLngModel.fromJson(response.data);
        getIt<TokensNKeys>().setLocationId(locationId: data.locationId);
        return right(data);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<CheckLatLngModel>(e);
      } else {
        log(e.toString(), name: "check service location");
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, LatLng>> getCurrentLatLng() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) {
      return left(const MainFailure.permissionFailure());
    }
    try {
      final position = await Geolocator.getCurrentPosition();
      return right(LatLng(position.latitude, position.longitude));
    } catch (e) {
      log(e.toString(), name: "get current location");
      final isLocationServiceEnabled =
          await Geolocator.isLocationServiceEnabled();
      if (!isLocationServiceEnabled) {
        return left(const MainFailure.locationOff());
      }
      return left(const MainFailure.otherFailure());
    }
  }
}
