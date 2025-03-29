import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/domain/checkout/i_checkout_repo.dart';
import 'package:profac/domain/checkout/models/coupon_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/main.dart';

part 'coupons_event.dart';
part 'coupons_state.dart';
part 'coupons_bloc.freezed.dart';

@injectable
class CouponsBloc extends Bloc<CouponsEvent, CouponsState> {
  final ICheckoutRepo checkoutRepo;
  CouponsBloc(this.checkoutRepo) : super(CouponsState.initial()) {
    on<_Reset>((event, emit) {
      emit(CouponsState.initial());
    });
    on<_RemoveCoupon>((event, emit) {
      emit(state.copyWith(selectedCoupon: null));
      BlocProvider.of<BookingAmountBloc>(navigatorKey.currentContext!).add(
        BookingAmountEvent.updateCouponCode(''),
      );
    });
    on<_SelectCoupon>((event, emit) {
      emit(state.copyWith(selectedCoupon: event.coupon));
      BlocProvider.of<BookingAmountBloc>(navigatorKey.currentContext!).add(
        BookingAmountEvent.updateCouponCode(event.coupon.code),
      );
    });
    on<_GetCoupons>((event, emit) async {
      emit(CouponsState(
        coupons: state.coupons,
        isLoading: true,
        failure: null,
        selectedCoupon: state.selectedCoupon,
      ));
      final result = await checkoutRepo.getCoupons();
      result.fold(
        (failure) {
          emit(CouponsState(
            coupons: state.coupons,
            isLoading: false,
            failure: failure,
            selectedCoupon: null,
          ));
        },
        (coupons) {
          emit(CouponsState(
            coupons: coupons,
            isLoading: false,
            failure: null,
            selectedCoupon: null,
          ));
        },
      );
    });
  }
}
