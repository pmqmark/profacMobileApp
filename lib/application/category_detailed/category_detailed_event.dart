part of 'category_detailed_bloc.dart';

@freezed
class CategoryDetailedEvent with _$CategoryDetailedEvent {
  const factory CategoryDetailedEvent.reset() = _Reset;
  const factory CategoryDetailedEvent.getCategoryDetailed(String categoryId) = _GetCategoryDetailed;
}