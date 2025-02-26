import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/localstorage/i_localstorage_repo.dart';
import 'package:profac/domain/request/request.dart';

@LazySingleton(as: ILocalstorageRepo)
class LocalstorageRepo extends ILocalstorageRepo {
  @override
  Future<bool> saveData() async {
    try {
      AndroidOptions getAndroidOptions() => const AndroidOptions(
            encryptedSharedPreferences: true,
          );
      final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
      storage.deleteAll();
      final tokens = getIt<JwtTokens>();
      log("Refresh Token: ${tokens.refreshToken}");
      log("Access Token: ${tokens.accessToken}");
      await storage.write(key: "access_token", value: tokens.accessToken);
      await storage.write(key: "refresh_token", value: tokens.refreshToken);
      await storage.write(key: "user_id", value: tokens.userId);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> getData() async {
    try {
      AndroidOptions getAndroidOptions() => const AndroidOptions(
            encryptedSharedPreferences: true,
          );
      final storage = FlutterSecureStorage(aOptions: getAndroidOptions());

      //final accessToken = await storage.read(key: "access_token");
      final accessToken =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2N2IyZjRiZWY4ODRiNTY5NDY3ZWRlYzkiLCJyb2xlIjoidXNlciIsImlhdCI6MTc0MDM3NjI3MSwiZXhwIjoxNzQwNDYyNjcxfQ.Y5mXQDF9CN7mOKR5APgRcc94KgcRciYMiNbCQ-O6m98";
      //final refreshToken = await storage.read(key: "refresh_token");
      final refreshToken =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2N2IyZjRiZWY4ODRiNTY5NDY3ZWRlYzkiLCJyb2xlIjoidXNlciIsImlhdCI6MTc0MDM3NjI3MSwiZXhwIjoxNzQwOTgxMDcxfQ.Q2oAz8RFRLHsBoyjrDMq2AYQw8L7qFgmNgKah0MUPT8";
      //final userId = await storage.read(key: "user_id");
      final userId = "67b2f4bef884b569467edec9";

      log("Refresh Token: $refreshToken");
      log("Access Token: $accessToken");
      log('User id:$userId');
      if (refreshToken != null && accessToken != null && userId != null) {
        getIt<JwtTokens>().saveTokens(
            accessToken: accessToken,
            refreshToken: refreshToken,
            userId: userId);
        getIt<Request>().updateAccessToken();
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> clearData() async {
    try {
      AndroidOptions getAndroidOptions() => const AndroidOptions(
            encryptedSharedPreferences: true,
          );
      final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
      storage.deleteAll();
      return true;
    } catch (e) {
      return false;
    }
  }
}
