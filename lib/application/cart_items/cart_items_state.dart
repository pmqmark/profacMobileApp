part of 'cart_items_bloc.dart';

@freezed
class CartItemsState with _$CartItemsState {
  const factory CartItemsState.initial() = _Initial;
  const factory CartItemsState.hasItemsState1(List<CartItemModel> cartitems) =
      _HasItemsState1;
  const factory CartItemsState.hasItemsState2(List<CartItemModel> cartitems) =
      _HasItemsState2;
}
