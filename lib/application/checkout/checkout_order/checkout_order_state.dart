part of 'checkout_order_bloc.dart';

@freezed
class CheckoutOrderState with _$CheckoutOrderState {
  const factory CheckoutOrderState.initial() = _Initial;
  const factory CheckoutOrderState.loading() = CheckoutOrderLoading;
  const factory CheckoutOrderState.error(MainFailure error) = CheckoutOrderError;
  const factory CheckoutOrderState.orderPlaced(AddressModel model) = _OrderPlaced;
}
