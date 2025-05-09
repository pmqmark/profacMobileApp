import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.serverFailure() = _ServerFailure;
  const factory MainFailure.authFailure(String message) = AuthFailure;
  const factory MainFailure.otherFailure({String? message}) = OtherFailure;
  const factory MainFailure.conflict() = Conflict;
  const factory MainFailure.permissionFailure() = PermissionFailure;
  const factory MainFailure.locationOff() = LocationOff;
  const factory MainFailure.noInternetConnection() = NoInternetConnection;
  const factory MainFailure.noData() = NoData;
}
