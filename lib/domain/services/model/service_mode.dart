import 'package:profac/domain/common/thumbnail_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';

class ServiceModel {
  final String id;
  final bool isPackage;
  final String name;
  final List<SubServiceModel> subservices;

  final Thumbnail? thumbnail;

  ServiceModel({
    required this.id,
    required this.isPackage,
    required this.name,
    required this.subservices,
    this.thumbnail,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['_id'] ?? '',
      isPackage: json['isPackage'] ?? false,
      name: json['name'] ?? '',
      subservices:
          json.containsKey('subservices') && json['subservices'] != null
              ? List<SubServiceModel>.from(
                  json['subservices'].map((x) => SubServiceModel.fromJson(x)))
              : [],
      thumbnail: json.containsKey('thumbnail') && json['thumbnail'] != null
          ? Thumbnail.fromJson(json['thumbnail'])
          : null,
    );
  }
}
