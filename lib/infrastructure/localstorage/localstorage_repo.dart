import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
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
      final tokens = getIt<TokensNKeys>();
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

      final accessToken = await storage.read(key: "access_token");
      //final accessToken =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjU4M2VhN2M5MTE4NzM3YjdlNjI1NDYiLCJyb2xlIjoiYWRtaW4iLCJpYXQiOjE3NDE1NzM4ODksImV4cCI6MTc0MTY2MDI4OX0.Zn5RI8QkJM1ViPoz54iniBlyQuMg-lagTH9I2f4o9sE";
      final refreshToken = await storage.read(key: "refresh_token");
      //final refreshToken =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjU4M2VhN2M5MTE4NzM3YjdlNjI1NDYiLCJyb2xlIjoiYWRtaW4iLCJpYXQiOjE3NDE1NzM4ODksImV4cCI6MTc0MjE3ODY4OX0.RwRPUcKhokDnmbr93QmM1IASuQg046_xtKaNs-FWtnA";
      final userId = await storage.read(key: "user_id");
      //final userId = "67b2f4bef884b569467edec9";

      log("Refresh Token: $refreshToken");
      log("Access Token: $accessToken");
      log('User id:$userId');
      if (refreshToken != null && accessToken != null && userId != null) {
        getIt<TokensNKeys>().saveTokens(
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
