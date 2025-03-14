part of 'category_detailed_bloc.dart';

@freezed
class CategoryDetailedState with _$CategoryDetailedState {
  const factory CategoryDetailedState.initial() = _Initial;
  const factory CategoryDetailedState.loading() = _Loading;
  const factory CategoryDetailedState.loaded(CategoryModel categoryModel) =
      _Loaded;
  const factory CategoryDetailedState.error(MainFailure failure) = _Error;
}
