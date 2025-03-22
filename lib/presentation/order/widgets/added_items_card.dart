import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:profac/presentation/order/widgets/service_item.dart';

class AddedItemsCard extends StatelessWidget {
  AddedItemsCard({
    super.key,
    required this.categoryId,
  });

  final String categoryId;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
        child: BlocConsumer<CartItemsBloc, CartItemsState>(
          listener: (context, state) {
            if (state.cartItems[categoryId] == null) {
              _manageEmptyCategory(context);
            }
          },
          builder: (context, state) {
            CartModel? cartModel;
            for (CartModel item in state.cart) {
              if (item.categoryId == categoryId) {
                cartModel = item;
              }
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderTitle(
                  title: "Added items",
                ),
                VerticalSpace(14),
                if (cartModel != null &&
                    state.cartItems.isNotEmpty &&
                    state.cartItems[categoryId] != null)
                  ...List.generate(
                    state.cartItems[categoryId]!.length * 2 - 1,
                    (index) {
                      if (index.isOdd) {
                        return VerticalSpace(8);
                      }
                      return ServiceItem(
                        isItemsAdding: state.cartItemAdding,
                        categoryId: categoryId,
                        subServiceCartModel:
                            cartModel!.subServiceModels[(index / 2).floor()],
                      );
                    },
                  )
              ],
            );
          },
        ),
      ),
    );
  }

  void _manageEmptyCategory(BuildContext context) {
    if (!flag) {
      Navigator.of(context).pop();
      BlocProvider.of<CartItemsBloc>(context).add(CartItemsEvent.getCart());
    }
    flag = true;
  }
}
