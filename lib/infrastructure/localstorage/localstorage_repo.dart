import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/localstorage/i_localstorage_repo.dart';

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
      final tokens = getIt<JwtTokens>();
      final accessToken = await storage.read(key: "access_token");
      final refreshToken = await storage.read(key: "refresh_token");
      log("Refresh Token: $refreshToken");
      log("Access Token: $accessToken");
      if (accessToken != null && refreshToken != null) {
        tokens.saveTokens(accessToken: accessToken, refreshToken: refreshToken);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
