class CheckLatLngModel {
  final double lat;
  final double lng;
  final bool isWithinMaxDist;
  final String locationId;
  CheckLatLngModel({
    required this.lat,
    required this.lng,
    required this.isWithinMaxDist,
    required this.locationId,
  });
  factory CheckLatLngModel.fromJson(Map<String, dynamic> json) {
    return CheckLatLngModel(
        lat: json['data']['result']['location']['geoLocation']['coordinates']
            [1],
        lng: json['data']['result']['location']['geoLocation']['coordinates']
            [0],
        isWithinMaxDist: json['data']['result']['isWithinMaxDist'],
        locationId: json['data']['result']['location']['_id']);
  }
}
