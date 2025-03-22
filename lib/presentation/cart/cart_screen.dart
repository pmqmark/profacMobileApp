import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/presentation/cart/widgets/cart_item_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    BlocProvider.of<CartItemsBloc>(context).add(CartItemsEvent.getCart());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            Icon(
              Icons.shopping_cart,
              color: Theme.of(context).primaryColor,
            ),
            HorizontalSpace(10),
            Text('Your Cart'),
          ],
        ),
      ),
      body: BlocBuilder<CartItemsBloc, CartItemsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.failure != null) {
            return Center(
              child: Text(state.failure!.toString()),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return CartItemCard(
                  cartModel: state.cart[index],
                );
              },
              separatorBuilder: (context, index) {
                return VerticalSpace(16);
              },
              itemCount: state.cart.length,
            ),
          );
        },
      ),
    );
  }
}
