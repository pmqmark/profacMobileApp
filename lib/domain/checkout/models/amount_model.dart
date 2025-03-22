class AmountModel {
  final double amount;

  AmountModel({required this.amount});

  factory AmountModel.fromJson(Map<String, dynamic> json) {
    return AmountModel(
      amount: (json["data"]['amount'] is int)
          ? (json["data"]['amount'] as int).toDouble()
          : json["data"]['amount'],
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
