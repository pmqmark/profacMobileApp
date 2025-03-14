class AddressModel {
  final String id;
  final String user;
  final String type;
  final String shortName;
  final String formattedAddress;
  final String houseNumber;
  final String landmark;
  final String name;
  final String mobile;
  final List<double> coordinates;

  AddressModel({
    required this.id,
    required this.user,
    required this.type,
    required this.shortName,
    required this.formattedAddress,
    required this.houseNumber,
    required this.landmark,
    required this.name,
    required this.mobile,
    required this.coordinates,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['_id'],
      user: json['user'],
      type: json['type'],
      shortName: json['short_name'],
      formattedAddress: json['formatted_address'],
      houseNumber: json['house_number'],
      landmark: json['landmark'],
      name: json['name'],
      mobile: json['mobile'],
      coordinates: List<double>.from(json['coordinates']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'type': type,
      'short_name': shortName,
      'formatted_address': formattedAddress,
      'house_number': houseNumber,
      'landmark': landmark,
      'name': name,
      'mobile': mobile,
      'coordinates': coordinates,
    };
  }

  @override
  String toString() {
    return 'AddressModel(user: $user, type: $type, shortName: $shortName, formattedAddress: $formattedAddress, houseNumber: $houseNumber, landmark: $landmark, name: $name, mobile: $mobile, coordinates: ${coordinates.toString()})';
  }
}
