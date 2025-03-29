part of 'search_services_bloc.dart';

@freezed
class SearchServicesState with _$SearchServicesState {
  const factory SearchServicesState.initial() = _Initial;
  const factory SearchServicesState.loading() = _Loading;
  const factory SearchServicesState.loaded(
      List<Either<SearchSubServiceModel, SearchCategoryModel>>
          searchResults) = _Loaded;
  const factory SearchServicesState.error(MainFailure failure) = _Error;
  const factory SearchServicesState.recentAndPopularLoaded(
      {required List<Either<SearchSubServiceModel, SearchCategoryModel>>
          popularSearches,
      required List<Either<SearchSubServiceModel, SearchCategoryModel>>
          recentSearches}) = _RecentAndPopularLoaded;
}
