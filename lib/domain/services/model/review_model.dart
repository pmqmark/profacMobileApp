class ReviewModel {
  final String id;
  final String userName;
  final String optionName;
  final double rating;
  final String comment;

  ReviewModel(
      {required this.id,
      required this.userName,
      required this.optionName,
      required this.rating,
      required this.comment});

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['_id'],
      userName: json['username'],
      optionName: json['option']['name'],
      rating: json['rating'].toDouble(),
      comment: json['comment'],
    );
  }
}
