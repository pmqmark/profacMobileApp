class OptionModel {
  final Discount? discount;
  final String id;
  final String name;
  final double price;
  final bool isArchived;
  final int v;
  final int duration;
  final String subServiceId;
  final String categoryId;
  OptionModel({
    this.discount,
    required this.id,
    required this.name,
    required this.price,
    required this.isArchived,
    required this.v,
    required this.duration,
    required this.subServiceId,
    required this.categoryId,
  });

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      discount: json.containsKey('discount') && json['discount'] != null
          ? Discount.fromJson(json['discount'])
          : null,
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      price: json['price'].toDouble() ?? 0,
      isArchived: json['isArchived'] ?? false,
      v: json['__v'] ?? 0,
      duration: json['duration'] ?? 0,
      subServiceId: json['subServiceId'] ?? '',
      categoryId: json['categoryId'] ?? '',
    );
  }
}

class Discount {
  final int minQuantity;
  final int appliesFrom;

  Discount({
    required this.minQuantity,
    required this.appliesFrom,
  });

  factory Discount.fromJson(Map<String, dynamic> json) {
    return Discount(
      minQuantity: json['minQuantity'],
      appliesFrom: json['appliesFrom'],
    );
  }
}
