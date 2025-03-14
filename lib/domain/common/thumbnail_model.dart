class Thumbnail {
  final String location;
  final String name;
  final String key;

  Thumbnail({
    required this.location,
    required this.name,
    required this.key,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      location: json['location'] ?? '',
      name: json['name'] ?? '',
      key: json['key'] ?? '',
    );
  }
}
