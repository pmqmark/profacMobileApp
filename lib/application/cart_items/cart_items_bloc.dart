import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/domain/cart/i_cart_repo.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/main.dart';

part 'cart_items_event.dart';
part 'cart_items_state.dart';
part 'cart_items_bloc.freezed.dart';

@injectable
class CartItemsBloc extends Bloc<CartItemsEvent, CartItemsState> {
  final ICartRepo cartRepo;
  CartItemsBloc(this.cartRepo) : super(CartItemsState.initial()) {
    on<_Reset>((event, emit) {
      emit(CartItemsState.initial());
    });
    on<_GetCart>((event, emit) async {
      log('get cart event');
      emit(state.copyWith(isLoading: true));
      final result = await cartRepo.getCart();
      result.fold((failure) {
        emit(CartItemsState.initial());
      }, (r) {
        emit(state.copyWith(cart: r, isLoading: false));
        for (CartModel item in r) {
          final categoryId = item.categoryId;
          for (SubServiceCartModel ssi in item.subServiceModels) {
            final subserviceId = ssi.id;
            for (OptionCartModel oi in ssi.optionModels) {
              final optionId = oi.id;
              final cartItem = CartItemModel(
                  categoryId: categoryId,
                  subserviceId: subserviceId,
                  optionId: optionId,
                  quantity: oi.quantity);
              add(_UpdateCartItem(cartItem));
            }
          }
        }
      });
    });

    on<_UpdateCartItem>((event, emit) {
      final cartItem = event.cartItem;
      log('update cart event');
      final currentcart = state.cartItems;
      final updatedCart = manageQuantity(currentcart, cartItem);

      // Sync changes with the cart list
      final updatedCartList = syncCartWithCartItems(state.cart, cartItem);

      emit(state.copyWith(
          cartItems: updatedCart, cart: updatedCartList, flag: !state.flag));
    });

    on<_AddCartItem>((event, emit) async {
      final cartItem = event.cartItem;
      emit(state.copyWith(cartItemAdding: true));
      final result = await cartRepo.updateProduct(cartItem);
      result.fold((failure) {
        emit(state.copyWith(cartItemAdding: false));
      }, (r) {
        log('add cart event success');
        final currentcart = Map<String, Map<String, Map<String, int>>>.from(
          state.cartItems.map((key, value) => MapEntry(
                key,
                Map<String, Map<String, int>>.from(
                  value.map((k, v) => MapEntry(
                        k,
                        Map<String, int>.from(v),
                      )),
                ),
              )),
        );
        log('current cart f: $currentcart');
        final updatedCart = manageQuantity(currentcart, cartItem);
        log('updated cart: $updatedCart');

        // Sync changes with the cart list
        final updatedCartList = syncCartWithCartItems(state.cart, cartItem);
        BlocProvider.of<BookingAmountBloc>(navigatorKey.currentContext!)
            .add(BookingAmountEvent.initial(
          cartItem.categoryId,
        ));
        BlocProvider.of<BookingAmountBloc>(navigatorKey.currentContext!)
            .add(BookingAmountEvent.fetchTotalAmount());
        emit(
          state.copyWith(
            cartItemAdding: false,
            cartItems: updatedCart,
            cart: updatedCartList,
            flag: !state.flag,
          ),
        );
      });
    });
  }

  Map<String, Map<String, Map<String, int>>> manageQuantity(
      Map<String, Map<String, Map<String, int>>> currentcart,
      CartItemModel cartItem) {
    final result = Map<String, Map<String, Map<String, int>>>.from(currentcart);

    if (!result.containsKey(cartItem.categoryId)) {
      result[cartItem.categoryId] = {};
    }

    final categoryMap =
        Map<String, Map<String, int>>.from(result[cartItem.categoryId]!);
    if (!categoryMap.containsKey(cartItem.subserviceId)) {
      categoryMap[cartItem.subserviceId] = {};
    }

    final subserviceMap =
        Map<String, int>.from(categoryMap[cartItem.subserviceId]!);

    if (cartItem.quantity == 0) {
      subserviceMap.remove(cartItem.optionId);

      if (subserviceMap.isEmpty) {
        categoryMap.remove(cartItem.subserviceId);
        if (categoryMap.isEmpty) {
          result.remove(cartItem.categoryId);
        }
      }
    } else {
      subserviceMap[cartItem.optionId] = cartItem.quantity;
    }

    if (subserviceMap.isNotEmpty) {
      categoryMap[cartItem.subserviceId] = subserviceMap;
    } else {
      categoryMap.remove(cartItem.subserviceId);
    }

    if (categoryMap.isNotEmpty) {
      result[cartItem.categoryId] = categoryMap;
    } else {
      result.remove(cartItem.categoryId);
    }

    return result;
  }

  // New method to synchronize cart list with cartItems map
  List<CartModel> syncCartWithCartItems(
      List<CartModel> currentCart, CartItemModel cartItem) {
    // Create a deep copy of the cart to avoid modifying the original
    final updatedCart = List<CartModel>.from(currentCart
        .map((cartModel) {
          // Find the category
          if (cartModel.categoryId == cartItem.categoryId) {
            // Copy the subservices with potential modifications
            final updatedSubServices = cartModel.subServiceModels
                .map((subService) {
                  // Find the subservice
                  if (subService.id == cartItem.subserviceId) {
                    // Copy the options with potential modifications
                    final updatedOptions =
                        subService.optionModels.where((option) {
                      // Keep all options except the one being removed (quantity = 0)
                      return !(option.id == cartItem.optionId &&
                          cartItem.quantity == 0);
                    }).toList();

                    // Return the subservice with updated options if there are options left
                    if (updatedOptions.isNotEmpty) {
                      return SubServiceCartModel(
                        id: subService.id,
                        name: subService.name,
                        optionModels: updatedOptions,
                      );
                    }
                    // Return null if no options left, to be filtered out later
                    return null;
                  }
                  // Return unchanged subservice
                  return subService;
                })
                .whereType<SubServiceCartModel>()
                .toList(); // Filter out nulls

            // Return the category with updated subservices if there are subservices left
            if (updatedSubServices.isNotEmpty) {
              return CartModel(
                categoryId: cartModel.categoryId,
                categoryName: cartModel.categoryName,
                subServiceModels: updatedSubServices,
              );
            }
            // Return null if no subservices left, to be filtered out later
            return null;
          }
          // Return unchanged category
          return cartModel;
        })
        .whereType<CartModel>()
        .toList()); // Filter out nulls

    return updatedCart;
  }
}
