class AmountModel {
  final double totalamount;
  final double tip;
  final double discountAmount;
  final double totalTax;
  final double subtotal;
  AmountModel(
      {required this.totalamount,
      required this.tip,
      required this.discountAmount,
      required this.totalTax,
      required this.subtotal});

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      totalamount: (json["data"]['totalAmount'] is int)
          ? (json["data"]['totalAmount'] as int).toDouble()
          : json["data"]['totalAmount'],
      tip: (json["data"]['tip'] is int)
          ? (json["data"]['tip'] as int).toDouble()
          : json["data"]['tip'],
      discountAmount: (json["data"]['discountAmount'] is int)
          ? (json["data"]['discountAmount'] as int).toDouble()
          : json["data"]['discountAmount'],
      totalTax: (json["data"]['totalTax'] is int)
          ? (json["data"]['totalTax'] as int).toDouble()
          : json["data"]['totalTax'],
      subtotal: (json["data"]['subtotal'] is int)
          ? (json["data"]['subtotal'] as int).toDouble()
          : json["data"]['subtotal'],
    );
  }
}

class AmountBodyModel {
  final String categoryId;
  final int tip;
  final String couponCode;
  AmountBodyModel({
    required this.categoryId,
    required this.tip,
    required this.couponCode,
  });

  Map<String, dynamic> toJson() {
    return {
      'categoryId': categoryId,
      'tip': tip,
      'couponCode': couponCode,
    };
  }

  AmountBodyModel copyWith({
    String? categoryId,
    int? tip,
    String? couponCode,
  }) {
    return AmountBodyModel(
      categoryId: categoryId ?? this.categoryId,
      tip: tip ?? this.tip,
      couponCode: couponCode ?? this.couponCode,
    );
  }
}
