part of 'add_review_bloc.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState.initial() = _Initial;
  const factory AddReviewState.loading() = _Loading;
  const factory AddReviewState.success() = _Success;
  const factory AddReviewState.error(MainFailure failure) = _Error;
}
