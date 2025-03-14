import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';

class CartItemModel {
  final String categoryId;
  final String subserviceId;
  final String optionId;
  int quantity;

  CartItemModel({
    required this.categoryId,
    required this.subserviceId,
    required this.optionId,
    required this.quantity,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      categoryId: json['categoryId'],
      subserviceId: json['subserviceId'],
      optionId: json['optionId'],
      quantity: json['quantity'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'userId': getIt<TokensNKeys>().userId,
      'categoryId': categoryId,
      'subserviceId': subserviceId,
      'optionId': optionId,
      'quantity': quantity,
    };
  }

  CartItemModel copyWith({
    String? categoryId,
    String? subserviceId,
    String? optionId,
    int? quantity,
  }) {
    return CartItemModel(
      categoryId: categoryId ?? this.categoryId,
      subserviceId: subserviceId ?? this.subserviceId,
      optionId: optionId ?? this.optionId,
      quantity: quantity ?? this.quantity,
    );
  }
}
