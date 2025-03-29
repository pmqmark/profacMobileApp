import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/booking/bookings/bookings_bloc.dart';
import 'package:profac/domain/booking/i_booking_repo.dart';
import 'package:profac/domain/booking/model/detailed_booking_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/main.dart';

part 'detailed_booking_event.dart';
part 'detailed_booking_state.dart';
part 'detailed_booking_bloc.freezed.dart';

@injectable
class DetailedBookingBloc
    extends Bloc<DetailedBookingEvent, DetailedBookingState> {
  final IBookingRepo _bookingRepo;
  DetailedBookingBloc(this._bookingRepo)
      : super(DetailedBookingState.initial()) {
    on<_GetDeailedBooking>((event, emit) async {
      log("get detailed booking event", name: "DetailedBookingBloc");
      emit(DetailedBookingState(
          isLoading: true, detailedBookingModel: null, failure: null));
      final response = await _bookingRepo.getBookingDetails(event.bookingId);
      response.fold(
        (l) {
          emit(state.copyWith(isLoading: false, failure: l));
        },
        (r) {
          emit(state.copyWith(
              isLoading: false, failure: null, detailedBookingModel: r));
          BlocProvider.of<BookingsBloc>(navigatorKey.currentContext!)
              .add(BookingsEvent.getAllBookings());
        },
      );
    });
    on<_CancelBooking>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await _bookingRepo.cancelBooking(event.bookingId);
      response.fold(
        (l) {
          emit(state.copyWith(isLoading: false, failure: l));
        },
        (r) {
          emit(state.copyWith(isLoading: false, failure: null));
          BlocProvider.of<BookingsBloc>(navigatorKey.currentContext!)
              .add(BookingsEvent.getAllBookings());
        },
      );
    });
    on<_Reset>((event, emit) {
      emit(DetailedBookingState.initial());
    });
  }
}
