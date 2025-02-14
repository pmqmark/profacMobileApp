import 'package:dartz/dartz.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/infrastructure/localstorage/localstorage_repo.dart';

class JwtTokens {
  String refreshToken = '';
  String accessToken = '';
  saveTokens({required String refreshToken, required String accessToken}) {
    this.refreshToken = refreshToken;
    this.accessToken = accessToken;
  }

  updateAccesstoken({required String accessToken}) {
    this.accessToken = accessToken;
    LocalstorageRepo().saveData();
  }

  clearAccessToken() {
    accessToken = '';
    getIt<Request>().clearAccessToken();
  }
}

abstract class IJwtTokensRepo {
  Future<Either<MainFailure, void>> fetchNewAccessToken();
}
