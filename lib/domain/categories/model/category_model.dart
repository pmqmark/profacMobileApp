import 'package:profac/domain/services/model/service_mode.dart';
import 'package:profac/domain/services/model/subservice_model.dart';

class CategoryModelResponse {
  final bool success;
  final String message;
  final CategoryData data;
  final dynamic error;

  CategoryModelResponse({
    required this.success,
    required this.message,
    required this.data,
    this.error,
  });

  factory CategoryModelResponse.fromJson(Map<String, dynamic> json) {
    return CategoryModelResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      data: CategoryData.fromJson(json['data']),
      error: json['error'],
    );
  }
}

class CategoryData {
  final List<CategoryModel> result;

  CategoryData({
    required this.result,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) {
    return CategoryData(
      result: json.containsKey('result') && json['result'] != null
          ? List<CategoryModel>.from(
              json['result'].map((x) => CategoryModel.fromJson(x)))
          : [],
    );
  }
}

class CategoryModel {
  final String id;
  final String name;
  final List<Media> media;
  final List<ServiceModel> services;
  final bool isArchived;
  final int v;
  final double avgRating;
  final int bookCount;
  CategoryModel({
    required this.id,
    required this.name,
    required this.media,
    required this.services,
    required this.isArchived,
    required this.v,
    required this.avgRating,
    required this.bookCount,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> res) {
    final Map<String, dynamic> json = res['data']['result']["category"];
    return CategoryModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      media: json.containsKey('media') && json['media'] != null
          ? List<Media>.from(json['media'].map((x) => Media.fromJson(x)))
          : [],
      services: json.containsKey('services') && json['services'] != null
          ? List<ServiceModel>.from(
              json['services'].map((x) => ServiceModel.fromJson(x)))
          : [
              ServiceModel(
                  id: "id", isPackage: true, name: "name", subservices: [])
            ],
      isArchived: json['isArchived'] ?? false,
      v: json['__v'] ?? 0,
      avgRating:
          json.containsKey('avgRating') ? json['avgRating'].toDouble() : 0.0,
      bookCount: json.containsKey('bookCount') ? json["bookCount"] : 0,
    );
  }
}
