class CompactCategoryModel {
  final String id;
  final String name;
  final int serviceCount;
  final String iconUrl;
  final String thumbnailUrl;
  CompactCategoryModel({
    required this.id,
    required this.name,
    required this.serviceCount,
    required this.iconUrl,
    required this.thumbnailUrl,
  });

  factory CompactCategoryModel.fromJson(Map<String, dynamic> json) {
    return CompactCategoryModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      serviceCount: (json['services'] as List).length,
      iconUrl:
          json.containsKey('icon') ? json['icon']["location"] as String : '',
      thumbnailUrl: json.containsKey('thumbnail')
          ? json['thumbnail']["location"] as String
          : '',
    );
  }
}

class CategoryGroupModel {
  final String id;
  final String name;
  final String iconUrl;
  final List<CompactCategoryModel> categories;

  CategoryGroupModel({
    required this.id,
    required this.name,
    required this.categories,
    required this.iconUrl,
  });

  factory CategoryGroupModel.fromJson(Map<String, dynamic> json) {
    return CategoryGroupModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      categories: (json['categories'] as List)
          .map((item) =>
              CompactCategoryModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      iconUrl:
          json.containsKey('icon') ? json['icon']["location"] as String : '',
    );
  }
}

class CategoryGroupResponse {
  final List<CategoryGroupModel> result;

  CategoryGroupResponse({
    required this.result,
  });

  factory CategoryGroupResponse.fromJson(Map<String, dynamic> json) {
    return CategoryGroupResponse(
      result: (json['data']['result'] as List)
          .map((item) =>
              CategoryGroupModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}
