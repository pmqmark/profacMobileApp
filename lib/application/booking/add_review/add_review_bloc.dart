import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/booking/i_booking_repo.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/services/model/review_model.dart';

part 'add_review_event.dart';
part 'add_review_state.dart';
part 'add_review_bloc.freezed.dart';

@injectable
class AddReviewBloc extends Bloc<AddReviewEvent, AddReviewState> {
  final IBookingRepo _bookingRepo;
  AddReviewBloc(this._bookingRepo) : super(_Initial()) {
    on<_AddReview>((event, emit) async {
      emit(const _Loading());
      final result = await _bookingRepo.addReview(event.reviewDataModel);
      emit(
        result.fold(
          (failure) => _Error(failure),
          (_) => const _Success(),
        ),
      );
      emit(const _Initial());
    });
  }
}
