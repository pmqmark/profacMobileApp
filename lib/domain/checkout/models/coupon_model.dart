class CouponResponse {
  CouponResponse({
    required this.coupons,
  });

  final List<CouponModel> coupons;
  
  factory CouponResponse.fromJson(Map<String, dynamic> json) => CouponResponse(
        coupons: List<CouponModel>.from(
            json["data"]["coupons"].map((x) => CouponModel.fromJson(x))),
      );
}

class CouponModel {
  CouponModel({
    required this.id,
    required this.code,
    required this.description,
    required this.discountType,
    required this.discountValue,
    required this.minOrderAmount,
    required this.maxDiscountAmount,
    required this.startDate,
    required this.endDate,
    required this.isActive,
    required this.appliesAutomatically,
    required this.applicableCategories,
    required this.v,
  });

  final String id;
  final String code;
  final String description;
  final String discountType;
  final int discountValue;
  final int minOrderAmount;
  final int maxDiscountAmount;
  final DateTime startDate;
  final DateTime endDate;
  final bool isActive;
  final bool appliesAutomatically;
  final List<String> applicableCategories;
  final int v;

  factory CouponModel.fromJson(Map<String, dynamic> json) => CouponModel(
        id: json["_id"],
        code: json["code"],
        description: json["description"],
        discountType: json["discountType"],
        discountValue: json["discountValue"],
        minOrderAmount: json["minOrderAmount"],
        maxDiscountAmount: json["maxDiscountAmount"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        isActive: json["isActive"],
        appliesAutomatically: json["appliesAutomatically"],
        applicableCategories:
            List<String>.from(json["applicableCategories"].map((x) => x)),
        v: json["__v"],
      );
}
