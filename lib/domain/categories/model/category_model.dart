class CategoryModelResponse {
  final List<CategoryModel> categories;

  CategoryModelResponse({
    required this.categories,
  });

  factory CategoryModelResponse.fromJson(Map<String, dynamic> json) {
    return CategoryModelResponse(
      categories: (json['data']['result'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class CategoryModel {
  final String id;
  final String name;
  final List<dynamic> media;
  final List<String> services;

  CategoryModel({
    required this.id,
    required this.name,
    required this.media,
    required this.services,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      media: json['media'] as List<dynamic>,
      services: (json['services'] as List<dynamic>).cast<String>(),
    );
  }
}
