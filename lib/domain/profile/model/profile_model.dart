class ProfileModel {
  final String id;
  // final String email;
  final String mobile;
  final List<Address> addressList;
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
    // required this.email,
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
      // email: json['data']['email'] ?? '',
      addressList: (json['data']['addressList'] as List<dynamic>? ?? [])
          .map((e) => Address.fromJson(e))
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
    return 'name:$name,role:$role:mobile:$mobile';
  }
}

class Address {
  final String id;
  final String user;
  final String type;
  final String houseNum;
  final String landmark;
  final String name;
  final String description;
  final List<dynamic> coordinates;
  final DateTime createdAt;
  final DateTime updatedAt;

  Address({
    required this.id,
    required this.user,
    required this.type,
    required this.houseNum,
    required this.landmark,
    required this.name,
    required this.description,
    required this.coordinates,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['_id'] ?? '',
      user: json['user'] ?? '',
      type: json['type'] ?? '',
      houseNum: json['houseNum'] ?? '',
      landmark: json['landmark'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      coordinates: json['location']?['coordinates'] ?? [],
      createdAt:
          DateTime.parse(json['createdAt'] ?? DateTime.now().toIso8601String()),
      updatedAt:
          DateTime.parse(json['updatedAt'] ?? DateTime.now().toIso8601String()),
    );
  }
}
