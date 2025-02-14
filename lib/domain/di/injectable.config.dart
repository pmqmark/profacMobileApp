// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:profac/application/search_location/search_location_bloc.dart'
    as _i1062;
import 'package:profac/application/splash_screen/splash_screen_bloc.dart'
    as _i724;
import 'package:profac/domain/address/i_address_repo.dart' as _i6;
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart' as _i367;
import 'package:profac/domain/localstorage/i_localstorage_repo.dart' as _i139;
import 'package:profac/infrastructure/address/address_repository.dart' as _i978;
import 'package:profac/infrastructure/jwt_tokens/jwt_tokens_repo.dart' as _i994;
import 'package:profac/infrastructure/localstorage/localstorage_repo.dart'
    as _i594;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i6.IAddressRepo>(() => _i978.AddressRepository());
    gh.factory<_i1062.SearchLocationBloc>(
        () => _i1062.SearchLocationBloc(gh<_i6.IAddressRepo>()));
    gh.lazySingleton<_i139.ILocalstorageRepo>(() => _i594.LocalstorageRepo());
    gh.lazySingleton<_i367.IJwtTokensRepo>(() => _i994.JwtTokensRepo());
    gh.factory<_i724.SplashScreenBloc>(
        () => _i724.SplashScreenBloc(gh<_i139.ILocalstorageRepo>()));
    return this;
  }
}
