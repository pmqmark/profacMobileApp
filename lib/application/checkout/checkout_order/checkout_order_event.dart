part of 'checkout_order_bloc.dart';

@freezed
class CheckoutOrderEvent with _$CheckoutOrderEvent {
  const factory CheckoutOrderEvent.placeOrder({required CheckoutOrderModel model,required AddressModel address}) = _PlaceOrder;
}