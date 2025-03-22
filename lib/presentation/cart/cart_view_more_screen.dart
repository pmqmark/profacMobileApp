import 'package:flutter/material.dart';
import 'package:profac/presentation/cart/widgets/cart_view_more_category_details.dart';
import 'package:profac/presentation/cart/widgets/cart_view_more_top_banner.dart';
import 'package:profac/presentation/bookings/widgets/product_details_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartViewMoreScreen extends StatelessWidget {
  const CartViewMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          CartViewMoreTopBanner(),
          VerticalSpace(6),
          CartViewMoreCategoryDetailes(),
          VerticalSpace(6),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Packages",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                VerticalSpace(30),
                ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Text(index.toString());
                  },
                  separatorBuilder: (context, index) => VerticalSpace(16),
                  itemCount: 3,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
