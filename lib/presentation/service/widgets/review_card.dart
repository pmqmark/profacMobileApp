import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.reviewModel,
  });
  final ReviewModel reviewModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingStars(
              value: reviewModel.rating,
              starSize: 17,
              starColor: Color(0xFFE4A70A),
              valueLabelVisibility: false,
            ),
            VerticalSpace(10),
            Text(
              reviewModel.comment,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            VerticalSpace(10),
            Text(
              reviewModel.userName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            VerticalSpace(4),
            Text(
              "2 min ago",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
