import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/fcm/i_fcm_repo.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/request/request.dart';

class FCMRepo extends IFcmRepo {
  @override
  Future updateFCMToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    if (token == null) {
      return;
    }
    try {
      await getIt<Request>().dio.put(
        ApiEndpoints.fcmToken,
        data: {
          'userId': getIt<TokensNKeys>().userId,
          'fcmToken': token,
        },
      );
      log("fcm token updated", name: "fcm token");
    } catch (e) {
      log(e.toString());
    }
  }
}
