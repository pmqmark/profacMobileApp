import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/search/model/search_model.dart';

abstract class ISearchRepo {
  Future<
      Either<MainFailure,
          List<Either<SearchSubServiceModel, SearchCategoryModel>>>> search(
      String query);
  Future<
          Either<MainFailure,
              List<Either<SearchSubServiceModel, SearchCategoryModel>>>>
      recentSearches();
  Future<
          Either<MainFailure,
              List<Either<SearchSubServiceModel, SearchCategoryModel>>>>
      popularSearches();
}
