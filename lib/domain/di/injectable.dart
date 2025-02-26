import 'package:profac/domain/di/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/request/request.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjuction() async {
  getIt.init(environment: Environment.prod);
  getIt.registerLazySingleton(() => Request());
  getIt.registerLazySingleton(() => JwtTokens());
}

//command for build runner use pooling watcher
//flutter pub run build_runner watch --delete-conflicting-outputs
