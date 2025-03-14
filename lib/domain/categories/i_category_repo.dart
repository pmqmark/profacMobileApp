import 'package:dartz/dartz.dart';
import 'package:profac/domain/categories/model/category_group_model.dart';
import 'package:profac/domain/categories/model/category_model.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class ICategoryRepo {
  Future<Either<MainFailure,List<CategoryGroupModel>>> getCategoryGroups();
  Future<Either<MainFailure,List<CategoryModel>>> getAllCategoris();
  Future<Either<MainFailure,CategoryModel>> getCategoruById(String categoryId);
}