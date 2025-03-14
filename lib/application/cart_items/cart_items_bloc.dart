import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';

part 'cart_items_event.dart';
part 'cart_items_state.dart';
part 'cart_items_bloc.freezed.dart';

@injectable
class CartItemsBloc extends Bloc<CartItemsEvent, CartItemsState> {
  CartItemsBloc() : super(_Initial()) {
    on<_Reset>((event, emit) {
      emit(_Initial());
    });
    on<_AddCartItem>((event, emit) {
      state.maybeWhen(
        orElse: () {
          emit(CartItemsState.hasItemsState1([event.cartItem]));
        },
        hasItemsState1: (cartItems) {
          List<CartItemModel> newCartItems = [...cartItems, event.cartItem];
          emit(CartItemsState.hasItemsState2(newCartItems));
        },
        hasItemsState2: (cartItems) {
          List<CartItemModel> newCartItems = [...cartItems, event.cartItem];
          emit(CartItemsState.hasItemsState1(newCartItems));
        },
      );
    });
    on<_UpdateCartItem>((event, emit) {
      state.maybeWhen(
        orElse: () {},
        hasItemsState1: (cartItems) {
          List<CartItemModel> newCartItems = cartItems;
          final cartItem = event.cartItem;
          final index = newCartItems
              .indexWhere((element) => element.optionId == cartItem.optionId);
          if (cartItem.quantity == 0) {
            final t = [
              for (int i = 0; i < newCartItems.length; i++)
                if (i != index) newCartItems[i]
            ];
            emit(CartItemsState.hasItemsState1(t));
            return;
          }
          newCartItems[index].quantity = cartItem.quantity;
          log("updating cart item ${newCartItems[index].toJson()}",
              name: "CartItemsBloc");

          emit(CartItemsState.hasItemsState2([...newCartItems]));
        },
        hasItemsState2: (cartItems) {
          List<CartItemModel> newCartItems = cartItems;
          final cartItem = event.cartItem;
          final index = newCartItems
              .indexWhere((element) => element.optionId == cartItem.optionId);
          if (cartItem.quantity == 0) {
            final t = [
              for (int i = 0; i < newCartItems.length; i++)
                if (i != index) newCartItems[i]
            ];
            emit(CartItemsState.hasItemsState1(t));
            return;
          }
          newCartItems[index].quantity = cartItem.quantity;
          log("updating cart item ${newCartItems[index].toJson()}",
              name: "CartItemsBloc");
          emit(CartItemsState.hasItemsState1(newCartItems));
        },
      );
    });
  }
}
