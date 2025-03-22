import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/checkout/i_checkout_repo.dart';
import 'package:profac/domain/checkout/models/checkout_order_model.dart';
import 'package:profac/domain/failure/failure.dart';

part 'checkout_order_event.dart';
part 'checkout_order_state.dart';
part 'checkout_order_bloc.freezed.dart';

@injectable
class CheckoutOrderBloc extends Bloc<CheckoutOrderEvent, CheckoutOrderState> {
  final ICheckoutRepo _checkoutRepo;
  CheckoutOrderBloc(this._checkoutRepo) : super(_Initial()) {
    on<_PlaceOrder>((event, emit) async {
      emit(CheckoutOrderLoading());
      final result = await _checkoutRepo.bookService(event.model);
      result.fold((failure) {
        emit(CheckoutOrderError(failure));
      }, (r) {
        emit(_OrderPlaced(event.address));
      });
    });
  }
}
