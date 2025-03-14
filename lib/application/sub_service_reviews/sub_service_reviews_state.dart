part of 'sub_service_reviews_bloc.dart';

@freezed
class SubServiceReviewsState with _$SubServiceReviewsState {
  const factory SubServiceReviewsState({
    required bool isLoading,
    required List<ReviewModel> reviews,
    required Option<Either<MainFailure, void>> failureOrReviews,
  }) = _SubServiceReviewsState;

  factory SubServiceReviewsState.initial() => SubServiceReviewsState(
        isLoading: false,
        reviews: [],
        failureOrReviews: none(),
      );
}
