part of 'catrogies_group_bloc.dart';

@freezed
class CategoriesGroupEvent with _$CategoriesGroupEvent {
  const factory CategoriesGroupEvent.started() = _Started;
  const factory CategoriesGroupEvent.getCategoryGroups() = _GetCategoryGroups;
}
