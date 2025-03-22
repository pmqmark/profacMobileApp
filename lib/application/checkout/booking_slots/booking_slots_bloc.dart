import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/checkout/i_checkout_repo.dart';
import 'package:profac/domain/checkout/models/slot_model.dart';
import 'package:profac/domain/failure/failure.dart';

part 'booking_slots_event.dart';
part 'booking_slots_state.dart';
part 'booking_slots_bloc.freezed.dart';

@injectable
class BookingSlotsBloc extends Bloc<BookingSlotsEvent, BookingSlotsState> {
  final ICheckoutRepo _checkoutRepo;
  BookingSlotsBloc(this._checkoutRepo) : super(BookingSlotsState.initial()) {
    on<BookingSlotsEvent>((event, emit) async {
      emit(BookingSlotsState(
        bookingSlots: state.bookingSlots,
        isLoading: true,
        failure: null,
      ));
      final result = await _checkoutRepo.getSlots(event.categoryId);
      result.fold((failure) {
        emit(BookingSlotsState(
          bookingSlots: state.bookingSlots,
          isLoading: false,
          failure: failure,
        ));
      }, (slots) {
        log("slots fetch success",name: "BookingSlotsBloc");
        emit(BookingSlotsState(
          bookingSlots: slots,
          isLoading: false,
          failure: null,
        ));
      });
    });
  }
}
