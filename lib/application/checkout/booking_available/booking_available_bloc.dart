import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/address/i_address_repo.dart';
import 'package:profac/domain/failure/failure.dart';

part 'booking_available_event.dart';
part 'booking_available_state.dart';
part 'booking_available_bloc.freezed.dart';

@injectable
class BookingAvailableBloc
    extends Bloc<BookingAvailableEvent, BookingAvailableState> {
  final IAddressRepo addressRepo;
  BookingAvailableBloc(this.addressRepo) : super(_Initial()) {
    on<_CheckAvailability>((event, emit) async {
      log("checkAvailability event", name: "BookingAvailableBloc");
      emit(const BookingAvailableState.loading());
      final result = await addressRepo.checkAvailability(
        categoryId: event.categoryId,
        addressId: event.addressId,
      );
      log("checkAvailability result ${result.toString()}",
          name: "BookingAvailableBloc");
      result.fold(
        (failure) {
          emit(BookingAvailableState.error(failure));
        },
        (isAvailable) {
          log("isAvailable fetch success", name: "BookingAvailableBloc");
          emit(BookingAvailableState.loaded(isAvailable: isAvailable));
        },
      );
    });
  }
}
