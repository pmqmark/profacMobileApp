import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/core/base_url.dart';
import 'package:profac/domain/address/i_address_repo.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';

@LazySingleton(as: IAddressRepo)
class AddressRepository extends IAddressRepo {
  @override
  Future<Either<MainFailure, GMapLocationAddressModel>> getAddress(
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
  Future<Either<MainFailure, GMapAddress?>> getAddressByLatLng(
      LatLng latLng) async {
    try {
      final response = await Dio().get(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${latLng.latitude},${latLng.longitude}&key=$googleMapsApiKey',
      );
      if (response.statusCode == 200) {
        final address = GMapLocationAddressLatLngModel.fromJson(response.data);
        log(address.result.toString());
        return right(address.result);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } on DioException catch (e) {
      return ApiFailureHandler().handleDioError<GMapAddress>(e);
    } catch (e) {
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, GMapAddress?>> getCurrentAddress() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) {
      return left(const MainFailure.permissionFailure());
    }
    final position = await Geolocator.getCurrentPosition();
    return getAddressByLatLng(LatLng(position.latitude, position.longitude));
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
}
