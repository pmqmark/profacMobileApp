import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/booking/i_booking_repo.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/domain/failure/failure.dart';

part 'bookings_event.dart';
part 'bookings_state.dart';
part 'bookings_bloc.freezed.dart';

@injectable
class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  final IBookingRepo _bookingRepo;

  BookingsBloc(this._bookingRepo) : super(BookingsState.initial()) {
    on<_GetAllBookings>(_getAllBookings);
    on<_GetMoreBookings>(_getMoreBookings);
    on<_Reset>((event, emit) {
      emit(BookingsState.initial());
    });
  }

  Future<void> _getAllBookings(
    _GetAllBookings event,
    Emitter<BookingsState> emit,
  ) async {
    emit(state.copyWith(
      bookings: [],
      isLoading: true,
      failure: null,
      page: 1,
      isLoadingMore: false,
    ));

    final result = await _bookingRepo.getBookings(null);

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        failure: failure,
      )),
      (response) {
        // Create modifiable copy and sort by createdAt
        final bookings = List<BookingModel>.from(response.bookings)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        emit(state.copyWith(
          bookings: bookings,
          isLoading: false,
          failure: null,
        ));
      },
    );
  }

  Future<void> _getMoreBookings(
    _GetMoreBookings event,
    Emitter<BookingsState> emit,
  ) async {
    if (state.failure != null || state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    final result = await _bookingRepo.getBookings(state.page + 1);

    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingMore: false,
        failure: failure,
      )),
      (response) {
        // Create modifiable copy and sort new bookings
        final newBookings = List<BookingModel>.from(response.bookings)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        emit(state.copyWith(
          bookings: [...state.bookings, ...newBookings],
          isLoadingMore: false,
          page: state.page + 1,
          failure: null,
        ));
      },
    );
  }
}
