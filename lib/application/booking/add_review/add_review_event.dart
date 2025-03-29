part of 'add_review_bloc.dart';

@freezed
class AddReviewEvent with _$AddReviewEvent {
  const factory AddReviewEvent.addReview(ReviewDataModel reviewDataModel) = _AddReview;
}