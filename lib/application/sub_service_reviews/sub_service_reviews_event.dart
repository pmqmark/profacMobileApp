part of 'sub_service_reviews_bloc.dart';

@freezed
class SubServiceReviewsEvent with _$SubServiceReviewsEvent {
  const factory SubServiceReviewsEvent.reset() = _Reset;
  const factory SubServiceReviewsEvent.getReviews(String subServiceId) = _GetReviews;
}