class GMapLocationAddressModel {
  final List<GMapAddress> results;

  const GMapLocationAddressModel({
    required this.results,
  });

  factory GMapLocationAddressModel.fromJson(Map<String, dynamic> json) {
    final List<GMapAddress> results = (json['results'] as List?)
            ?.map((x) => GMapAddress.fromJson(x))
            .toList() ??
        [];
    return GMapLocationAddressModel(results: results);
  }

  @override
  String toString() {
    return 'GMapLocationAddressModel(results: ${results.toString()})';
  }
}

class GMapAddress {
  final String formattedAddress;
  final double lat;
  final double lng;
  final String name;

  GMapAddress({
    required this.formattedAddress,
    required this.lat,
    required this.lng,
    required this.name,
  });

  factory GMapAddress.fromJson(Map<String, dynamic> json) {
    final geometry = json['geometry'] as Map<String, dynamic>?;
    final location = geometry?['location'] as Map<String, dynamic>?;

    return GMapAddress(
      formattedAddress: json['formatted_address'] ?? '',
      lat: location?['lat']?.toDouble() ?? 0.0,
      lng: location?['lng']?.toDouble() ?? 0.0,
      name: json.containsKey('name')
          ? json['name']
          : json.containsKey("address_components")
              ? json['address_components'][1]['long_name']
              : json['formatted_address'],
    );
  }

  @override
  String toString() {
    return 'GMapAddress(formattedAddress: $formattedAddress, lat: $lat, lng: $lng, name: $name)';
  }
}

class GMapLocationAddressLatLngModel {
  final GMapAddress result;

  const GMapLocationAddressLatLngModel({
    required this.result,
  });

  factory GMapLocationAddressLatLngModel.fromJson(Map<String, dynamic> json) {
    final GMapAddress? firstResult = (json['results'] as List?)
        ?.map((x) => GMapAddress.fromJson(x))
        .firstOrNull;
    return GMapLocationAddressLatLngModel(result: firstResult!);
  }

  @override
  String toString() {
    return 'GMapLocationAddressLatLngModel(result: ${result.toString()})';
  }
}

enum AddressType { home, other }
