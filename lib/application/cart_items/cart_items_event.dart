part of 'cart_items_bloc.dart';

@freezed
class CartItemsEvent with _$CartItemsEvent {
  const factory CartItemsEvent.reset() = _Reset;
  const factory CartItemsEvent.addCartItem(CartItemModel cartItem) = _AddCartItem;
  const factory CartItemsEvent.updateCartItem(CartItemModel cartItem) = _UpdateCartItem;
}