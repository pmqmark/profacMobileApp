import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/address/model/check_lat_lng_model.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IAddressRepo {
  Future<Either<MainFailure, GMapLocationAddressModel>> getGmapAddress(
      String query);
  Future<Either<MainFailure, GMapAddress>> getAddressByLatLng(LatLng latLng);
  Future<Either<MainFailure, GMapAddress>> getCurrentLocation();
  Future<Either<MainFailure, void>> saveAddress(AddressModel address);
  Future<Either<MainFailure, CheckLatLngModel>> checkServiceLocation(
      LatLng latLng);
  Future<Either<MainFailure, LatLng>> getCurrentLatLng();
  Future<Either<MainFailure, bool>> checkAvailability(
     {required String categoryId, required String addressId});
}
