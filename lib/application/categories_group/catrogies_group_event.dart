part of 'catrogies_group_bloc.dart';

@freezed
class CategoriesGroupEvent with _$CategoriesGroupEvent {
  const factory CategoriesGroupEvent.reset() = _Reset;
  const factory CategoriesGroupEvent.getCategoryGroups() = _GetCategoryGroups;
}
