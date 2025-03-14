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
import 'package:profac/application/address/address_bloc.dart' as _i140;
import 'package:profac/application/authentication/authentication_bloc.dart'
    as _i17;
import 'package:profac/application/banner/banner_bloc.dart' as _i877;
import 'package:profac/application/cart_items/cart_items_bloc.dart' as _i259;
import 'package:profac/application/categories_group/catrogies_group_bloc.dart'
    as _i825;
import 'package:profac/application/category_detailed/category_detailed_bloc.dart'
    as _i727;
import 'package:profac/application/detailed_service/detailed_service_bloc.dart'
    as _i181;
import 'package:profac/application/profile/profile_bloc.dart' as _i795;
import 'package:profac/application/search_location/search_location_bloc.dart'
    as _i1062;
import 'package:profac/application/search_screen/search_services_bloc.dart'
    as _i820;
import 'package:profac/application/service_available/service_available_bloc.dart'
    as _i237;
import 'package:profac/application/splash_screen/splash_screen_bloc.dart'
    as _i724;
import 'package:profac/application/sub_service_reviews/sub_service_reviews_bloc.dart'
    as _i1031;
import 'package:profac/domain/address/i_address_repo.dart' as _i6;
import 'package:profac/domain/authentication/i_authentication_repo.dart'
    as _i602;
import 'package:profac/domain/banners/i_banners_repo.dart' as _i915;
import 'package:profac/domain/cart/i_cart_repo.dart' as _i129;
import 'package:profac/domain/categories/i_category_repo.dart' as _i273;
import 'package:profac/domain/localstorage/i_localstorage_repo.dart' as _i139;
import 'package:profac/domain/profile/i_profile_repo.dart' as _i442;
import 'package:profac/domain/services/i_service_repo.dart' as _i125;
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart' as _i654;
import 'package:profac/infrastructure/address/address_repository.dart' as _i978;
import 'package:profac/infrastructure/authentication/authentication_repo.dart'
    as _i53;
import 'package:profac/infrastructure/banners/banners_repo.dart' as _i597;
import 'package:profac/infrastructure/cart/cart_repo.dart' as _i597;
import 'package:profac/infrastructure/categorirs/categories_repo.dart' as _i941;
import 'package:profac/infrastructure/jwt_tokens/jwt_tokens_repo.dart' as _i994;
import 'package:profac/infrastructure/localstorage/localstorage_repo.dart'
    as _i594;
import 'package:profac/infrastructure/profile/profile_repo.dart' as _i551;
import 'package:profac/infrastructure/services/service_repo.dart' as _i47;

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
    gh.factory<_i259.CartItemsBloc>(() => _i259.CartItemsBloc());
    gh.factory<_i237.ServiceAvailableBloc>(() => _i237.ServiceAvailableBloc());
    gh.lazySingleton<_i654.IJwtTokensRepo>(() => _i994.JwtTokensRepo());
    gh.lazySingleton<_i125.IServiceRepo>(() => _i47.ServiceRepo());
    gh.lazySingleton<_i602.IAuthenticationRepo>(
        () => _i53.AuthenticationRepo());
    gh.lazySingleton<_i273.ICategoryRepo>(() => _i941.CategoriesRepo());
    gh.lazySingleton<_i6.IAddressRepo>(() => _i978.AddressRepository());
    gh.factory<_i1062.SearchLocationBloc>(
        () => _i1062.SearchLocationBloc(gh<_i6.IAddressRepo>()));
    gh.lazySingleton<_i129.ICartRepo>(() => _i597.CartRepo());
    gh.lazySingleton<_i915.IBannersRepo>(() => _i597.BannersRepo());
    gh.lazySingleton<_i139.ILocalstorageRepo>(() => _i594.LocalstorageRepo());
    gh.factory<_i820.SearchServicesBloc>(() => _i820.SearchServicesBloc(
          gh<_i654.IJwtTokensRepo>(),
          gh<_i125.IServiceRepo>(),
        ));
    gh.factory<_i1031.SubServiceReviewsBloc>(() => _i1031.SubServiceReviewsBloc(
          gh<_i654.IJwtTokensRepo>(),
          gh<_i125.IServiceRepo>(),
        ));
    gh.factory<_i877.BannerBloc>(() => _i877.BannerBloc(
          gh<_i915.IBannersRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.lazySingleton<_i442.IProfileRepo>(() => _i551.ProfileRepo());
    gh.factory<_i825.CategoriesGroupBloc>(() => _i825.CategoriesGroupBloc(
          gh<_i273.ICategoryRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.factory<_i727.CategoryDetailedBloc>(() => _i727.CategoryDetailedBloc(
          gh<_i273.ICategoryRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.factory<_i795.ProfileBloc>(() => _i795.ProfileBloc(
          gh<_i442.IProfileRepo>(),
          gh<_i139.ILocalstorageRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.factory<_i181.DetailedServiceBloc>(() => _i181.DetailedServiceBloc(
          gh<_i125.IServiceRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.factory<_i140.AddressBloc>(() => _i140.AddressBloc(
          gh<_i6.IAddressRepo>(),
          gh<_i654.IJwtTokensRepo>(),
        ));
    gh.factory<_i17.AuthenticationBloc>(() => _i17.AuthenticationBloc(
          gh<_i602.IAuthenticationRepo>(),
          gh<_i139.ILocalstorageRepo>(),
        ));
    gh.factory<_i724.SplashScreenBloc>(
        () => _i724.SplashScreenBloc(gh<_i139.ILocalstorageRepo>()));
    return this;
  }
}
