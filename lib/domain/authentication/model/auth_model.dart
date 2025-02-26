import 'package:profac/domain/authentication/i_authentication_repo.dart';

class AuthModel {
  final String userId;
  final String accessToken;
  final String refreshToken;
  late AuthenticationType authenticationType;
  AuthModel({
    required this.userId,
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'];
    if (data == null) {
      throw Exception('Data field is missing in the JSON response');
    }

    final userInfo = data['userInfo'];
    if (userInfo == null) {
      throw Exception('UserInfo field is missing in the data');
    }

    return AuthModel(
      userId: userInfo['_id'], // Extract userId from userInfo
      accessToken: data['accessToken'], // Extract accessToken
      refreshToken: data['refreshToken'], // Extract refreshToken
    );
  }

  @override
  String toString() {
    return 'AuthModel(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}
