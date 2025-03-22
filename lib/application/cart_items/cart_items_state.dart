part of 'cart_items_bloc.dart';

@freezed
class CartItemsState with _$CartItemsState {
  factory CartItemsState({
    required List<CartModel> cart,
    required bool isLoading,
    required Map<String, Map<String, Map<String, int>>> cartItems,
    required bool cartItemAdding,
    required MainFailure? failure,
    required bool flag,
  }) = _CartItemsState;
  factory CartItemsState.initial() => CartItemsState(
        cartItems: {},
        flag: false,
        isLoading: false,
        cartItemAdding: false,
        cart: [],
        failure: null,
      );
}
