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

class ReviewDataModel {
  final String user;
  final String subservice;
  final String option;
  final String booking;
  final double rating;
  final String comment;

  ReviewDataModel({
    required this.user,
    required this.subservice,
    required this.option,
    required this.booking,
    required this.rating,
    required this.comment,
  });

Map<String, dynamic> toJson() {
  return {
    'user': user,
    'subservice': subservice,
    'option': option,
    'booking': booking,
    'rating': rating,
    'comment': comment,
  };
}
}
