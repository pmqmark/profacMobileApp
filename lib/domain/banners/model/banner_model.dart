class BannerResponse {
  BannerResponse({
    required this.success,
    required this.message,
    required this.bannerModels,
    required this.error,
  });

  final bool success;
  final String message;
  final List<BannerModel> bannerModels;
  final dynamic error;

  factory BannerResponse.fromJson(Map<String, dynamic> json) => BannerResponse(
        success: json["success"],
        message: json["message"],
        bannerModels: List<BannerModel>.from(
            json["data"]["result"].map((x) => BannerModel.fromJson(x))),
        error: json["error"],
      );
}

class BannerModel {
  BannerModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,

  });

  final String id;
  final String title;
  final String subtitle;
  final String image;


  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        id: json["_id"],
        title: json["title"],
        subtitle: json["subtitle"],

        image: json["image"]["location"],

      );
}
