class CompactCategoryModel {
  final String id;
  final String name;

  CompactCategoryModel({
    required this.id,
    required this.name,
  });

  factory CompactCategoryModel.fromJson(Map<String, dynamic> json) {
    return CompactCategoryModel(
      id: json['_id'] as String,
      name: json['name'] as String,
    );
  }
}

class CategoryGroupModel {
  final String id;
  final String name;
  final List<CompactCategoryModel> categories;

  CategoryGroupModel({
    required this.id,
    required this.name,
    required this.categories,
  });

  factory CategoryGroupModel.fromJson(Map<String, dynamic> json) {
    return CategoryGroupModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      categories: (json['categories'] as List)
          .map((item) =>
              CompactCategoryModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class CategoryGroupResponse {
  final List<CategoryGroupModel> result;
  final int total;

  CategoryGroupResponse({
    required this.result,
    required this.total,
  });

  factory CategoryGroupResponse.fromJson(Map<String, dynamic> json) {
    return CategoryGroupResponse(
      result: (json['data']['result'] as List)
          .map((item) =>
              CategoryGroupModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      total: json['data']['pagination']['total'] as int,
    );
  }
}
