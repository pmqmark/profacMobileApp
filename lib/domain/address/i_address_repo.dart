import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IAddressRepo {
  Future<Either<MainFailure, GMapLocationAddressModel>> getAddress(
      String query);
  Future<Either<MainFailure, GMapAddress?>> getAddressByLatLng(LatLng latLng);
  Future<Either<MainFailure, GMapAddress?>> getCurrentAddress();
}
