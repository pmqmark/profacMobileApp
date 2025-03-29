import 'package:dartz/dartz.dart';

class SearchResponseModel {
  final List<Either<SearchSubServiceModel, SearchCategoryModel>> searchResults;

  SearchResponseModel({
    required this.searchResults,
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] ?? {};
    final List<dynamic> resultJson = data['result'] ?? [];

    final searchResults = resultJson.map((item) {
      final String resourceType = item['resourceType'] ?? '';

      if (resourceType == 'subservice') {
        return left<SearchSubServiceModel, SearchCategoryModel>(
          SearchSubServiceModel.fromJson(item),
        );
      } else if (resourceType == 'category') {
        return right<SearchSubServiceModel, SearchCategoryModel>(
          SearchCategoryModel.fromJson(item),
        );
      } else {
        return right<SearchSubServiceModel, SearchCategoryModel>(
          SearchCategoryModel(
              name: '', resourceType: resourceType, serviceCount: 0,id: ''),
        );
      }
    }).toList();

    return SearchResponseModel(
      searchResults: searchResults,
    );
  }
}

class SearchSubServiceModel {
  final String id;
  final String name;
  final double averageRating;
  final int reviewCount;
  final String resourceType;

  SearchSubServiceModel({
    required this.id,
    required this.name,
    required this.averageRating,
    required this.reviewCount,
    required this.resourceType,
  });

  factory SearchSubServiceModel.fromJson(Map<String, dynamic> json) {
    return SearchSubServiceModel(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      averageRating: (json['averageRating'] ?? 0).toDouble(),
      reviewCount: json['reviewCount'] ?? 0,
      resourceType: json['resourceType'] ?? '',
    );
  }
}

class SearchCategoryModel {
  final String name;
  final String resourceType;
  final int serviceCount;
  final String id;
  SearchCategoryModel( {
    required this.name,
    required this.resourceType,
    required this.serviceCount,
    required this.id,
  });

  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) {
    return SearchCategoryModel(
      name: json['name'] ?? '',
      resourceType: json['resourceType'] ?? '',
      serviceCount: json['serviceCount'] ?? 0,
      id: json['_id'] ?? '',
    );
  }
}
