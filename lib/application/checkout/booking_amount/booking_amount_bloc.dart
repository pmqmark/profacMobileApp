import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/checkout/i_checkout_repo.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/failure/failure.dart';

part 'booking_amount_event.dart';
part 'booking_amount_state.dart';
part 'booking_amount_bloc.freezed.dart';

@injectable
class BookingAmountBloc extends Bloc<BookingAmountEvent, BookingAmountState> {
  final ICheckoutRepo checkoutRepo;
  BookingAmountBloc(this.checkoutRepo) : super(BookingAmountState.initial()) {
    on<_Initial>((event, emit) {
      log('Initial amount: ${event.amount}');
      emit(BookingAmountState(
        amount: event.amount,
        isLoading: false,
        failure: null,
        tip: 0,
      ));
    });
    on<_FetchTotalAmount>((event, emit) async {
      log('fetch total amount event', name: 'BookingAmountBloc');
      emit(BookingAmountState(
        amount: state.amount,
        isLoading: true,
        failure: null,
        tip: event.amountBodyModel.tip,
      ));
      final result = await checkoutRepo.getAmount(event.amountBodyModel);
      result.fold(
        (failure) {
          emit(BookingAmountState(
            amount: state.amount,
            isLoading: false,
            failure: failure,
            tip: state.tip,
          ));
        },
        (amount) {
          emit(BookingAmountState(
            amount: amount.amount,
            isLoading: false,
            failure: null,
            tip: event.amountBodyModel.tip,
          ));
        },
      );
    });
  }
}
