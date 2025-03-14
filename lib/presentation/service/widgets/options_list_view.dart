import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView(
      {super.key,
      required this.options,
      required this.subServiceId,
      required this.categoryId});
  final List<OptionModel> options;
  final String subServiceId;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 84,
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfn9hZlr4bE0U7WBnhldu64gTfL8Z0dNuKSA&s"),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: BlocBuilder<CartItemsBloc, CartItemsState>(
                    builder: (context, state) {
                  final List<CartItemModel> items = state.map(
                    initial: (_) => [],
                    hasItemsState1: (value) => value.cartitems,
                    hasItemsState2: (value) => value.cartitems,
                  );
                  final itemIndex = items
                      .indexWhere((item) => item.optionId == options[index].id);

                  if (itemIndex == -1 || items[itemIndex].quantity == 0) {
                    return SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CartItemsBloc>(context)
                              .add(CartItemsEvent.addCartItem(
                            CartItemModel(
                                optionId: options[index].id,
                                quantity: 1,
                                categoryId: categoryId,
                                subserviceId: subServiceId),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          "Add",
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ),
                    );
                  }
                  return SizedBox(
                    width: 80,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    if (itemIndex != -1) {
                                      final count = items[itemIndex].quantity;
                                      BlocProvider.of<CartItemsBloc>(context)
                                          .add(
                                        CartItemsEvent.updateCartItem(
                                          items[itemIndex]
                                              .copyWith(quantity: count - 1),
                                        ),
                                      );
                                    }
                                  },
                                  child: Icon(Icons.remove, size: 18)),
                            ),
                            Expanded(
                              child: Text(
                                itemIndex == -1
                                    ? "0"
                                    : items[itemIndex].quantity.toString(),
                                style: Theme.of(context).textTheme.bodyMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                  onTap: () {
                                    if (itemIndex == -1) {
                                      BlocProvider.of<CartItemsBloc>(context)
                                          .add(
                                        CartItemsEvent.addCartItem(
                                          CartItemModel(
                                              optionId: options[index].id,
                                              quantity: 1,
                                              categoryId: categoryId,
                                              subserviceId: subServiceId),
                                        ),
                                      );
                                    } else {
                                      final count = items[itemIndex].quantity;
                                      BlocProvider.of<CartItemsBloc>(context)
                                          .add(
                                        CartItemsEvent.updateCartItem(
                                          items[itemIndex]
                                              .copyWith(quantity: count + 1),
                                        ),
                                      );
                                    }
                                  },
                                  child: Icon(Icons.add, size: 18)),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            VerticalSpace(4),
            Text(
              options[index].name,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            VerticalSpace(4),
            Row(
              children: [
                Text(
                  "₹${options[index].price.toString()}",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                HorizontalSpace(5),
                Icon(Icons.circle, size: 4, color: Colors.grey[400]),
                HorizontalSpace(5),
                Text(
                  "${options[index].duration ~/ 60 > 0 ? '${options[index].duration ~/ 60}hrs ' : ''}${options[index].duration % 60 > 0 ? '${options[index].duration % 60}mins' : ''}",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            VerticalSpace(4),
          ],
        );
      },
      separatorBuilder: (context, index) {
        return HorizontalSpace(16);
      },
      itemCount: options.length,
    );
  }
}
