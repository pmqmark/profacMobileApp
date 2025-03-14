import 'package:profac/domain/address/model/address_modal.dart';

class ProfileModel {
  final String id;
  final String email;
  final String mobile;
  List<AddressModel> addressList;
  final String role;
  final bool isBlocked;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String cartId;
  final String name;

  ProfileModel({
    required this.id,
    required this.addressList,
    required this.role,
    required this.email,
    required this.mobile,
    required this.isBlocked,
    required this.createdAt,
    required this.updatedAt,
    required this.cartId,
    required this.name,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['data']['_id'] ?? '',
      mobile: json['data']['mobile'] ?? '',
      email: json['data']['email'] ?? '',
      addressList: (json['data']['addressList'] as List<dynamic>? ?? [])
          .map((e) => AddressModel.fromJson(e))
          .toList(),
      role: json['data']['role'] ?? '',
      isBlocked: json['data']['isBlocked'] ?? false,
      createdAt: DateTime.parse(
          json['data']['createdAt'] ?? DateTime.now().toIso8601String()),
      updatedAt: DateTime.parse(
          json['data']['updatedAt'] ?? DateTime.now().toIso8601String()),
      cartId: json['data']['cartId'] ?? '',
      name: json['data']['name'] ?? '',
    );
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'ProfileModel(id: $id, mobile: $mobile, email:$email, addressList: $addressList, role: $role, isBlocked: $isBlocked, createdAt: $createdAt, updatedAt: $updatedAt, cartId: $cartId, name: $name)';
  }
}
