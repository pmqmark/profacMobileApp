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
    on<_Reset>((event, emit) {
      emit(BookingAmountState.initial());
    });
    on<_Initial>((event, emit) {
      emit(BookingAmountState(
        amount: null,
        couponCode: '',
        isLoading: false,
        failure: null,
        tip: 0,
        categoryId: event.categoryId,
      ));
    });
    on<_FetchTotalAmount>((event, emit) async {
      log('fetch total amount event', name: 'BookingAmountBloc');
      emit(state.copyWith(isLoading: true, failure: null));
      log('coupon code: ${state.couponCode}', name: 'BookingAmountBloc');
      log('tip: ${state.tip}', name: 'BookingAmountBloc');
      final AmountBodyModel amountBodyModel = AmountBodyModel(
        categoryId: state.categoryId,
        tip: state.tip,
        couponCode: state.couponCode,
      );
      final result = await checkoutRepo.getAmount(amountBodyModel);
      result.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, failure: failure));
        },
        (amount) {
          emit(state.copyWith(isLoading: false, amount: amount, failure: null));
        },
      );
    });
    on<_UpdateCouponCode>((event, emit) {
      emit(state.copyWith(couponCode: event.code));
      add(
        _FetchTotalAmount(),
      );
    });
    on<_UpdateTip>((event, emit) {
      emit(state.copyWith(tip: event.tip));
      log('tip updated: ${event.tip}');
      add(
        _FetchTotalAmount(),
      );
    });
  }
}
