import 'package:dartz/dartz.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/infrastructure/localstorage/localstorage_repo.dart';

class TokensNKeys {
  String refreshToken = '';
  String accessToken = '';
  String userId = '';
  String locationId = '';
  saveTokens(
      {required String refreshToken,
      required String accessToken,
      required String userId}) {
    this.refreshToken = refreshToken;
    this.accessToken = accessToken;
    this.userId = userId;
  }

  setLocationId({required String locationId}) {
    this.locationId = locationId;
  }

  updateAccesstoken(
      {required String accessToken, required String refreshToken}) async {
    this.accessToken = accessToken;
    this.refreshToken = refreshToken;
    await LocalstorageRepo().saveData();
  }

  clearTokens() {
    accessToken = '';
    refreshToken = '';
    getIt<Request>().clearAccessToken();
  }

  clearAll() async {
    accessToken = '';
    refreshToken = '';
    userId = '';
    getIt<Request>().clearAccessToken();
    return await LocalstorageRepo().clearData();
  }
}

abstract class IJwtTokensRepo {
  Future<Either<MainFailure, void>> fetchNewAccessToken();
  Future<Either<MainFailure, void>> authFailureHandler(MainFailure failure);
}
