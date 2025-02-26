part of 'catrogies_group_bloc.dart';

@freezed
class CategoriesGroupState with _$CategoriesGroupState {
  const factory CategoriesGroupState.initial() = _Initial;
  const factory CategoriesGroupState.loading() = _Loading;
  const factory CategoriesGroupState.loaded(
      List<CategoryGroupModel> categoryGroups) = _Loaded;
  const factory CategoriesGroupState.error(MainFailure failure) = _Error;
}
