part of 'sub_service_reviews_bloc.dart';

@freezed
class SubServiceReviewsEvent with _$SubServiceReviewsEvent {
  const factory SubServiceReviewsEvent.started() = _Started;
  const factory SubServiceReviewsEvent.getReviews(String subServiceId) = _GetReviews;
}