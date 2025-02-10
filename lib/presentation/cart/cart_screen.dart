import 'package:flutter/material.dart';
import 'package:profac/presentation/cart/widgets/cart_item_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return CartItemCard();
            },
            separatorBuilder: (context, index) {
              return VerticalSpace(16);
            },
            itemCount: 20),
      ),
    );
  }
}
