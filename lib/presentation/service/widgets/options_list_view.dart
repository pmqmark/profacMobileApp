import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/infrastructure/cart/cart_repo.dart';
import 'package:profac/presentation/common_widgets/border_progress_indicator.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView({
    super.key,
    required this.options,
    required this.subServiceId,
  });
  final List<OptionModel> options;
  final String subServiceId;
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
                    options[index].thumbnailUrl,
                  ),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: BlocBuilder<CartItemsBloc, CartItemsState>(
                    builder: (context, state) {
                  final currentItem = CartItemModel(
                      categoryId: options[index].categoryId,
                      subserviceId: subServiceId,
                      optionId: options[index].id,
                      quantity: 0);
                  final quantity = CartRepo().getQuantity(context, currentItem);
                  if (quantity == 0) {
                    return SizedBox(
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CartItemsBloc>(context)
                              .add(CartItemsEvent.addCartItem(
                            CartItemModel(
                                optionId: options[index].id,
                                quantity: 1,
                                categoryId: options[index].categoryId,
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
                  return BorderProgressIndicator(
                    isLoading: state.cartItemAdding,
                    borderRadius: BorderRadius.circular(5.0),
                    child: SizedBox(
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
                                      if (quantity > 0) {
                                        BlocProvider.of<CartItemsBloc>(context)
                                            .add(
                                          CartItemsEvent.addCartItem(
                                            currentItem.copyWith(
                                                quantity: quantity - 1),
                                          ),
                                        );
                                      }
                                    },
                                    child: Icon(Icons.remove, size: 18)),
                              ),
                              Expanded(
                                child: Text(
                                  quantity.toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<CartItemsBloc>(context)
                                          .add(
                                        CartItemsEvent.addCartItem(
                                          currentItem.copyWith(
                                              quantity: quantity + 1),
                                        ),
                                      );
                                    },
                                    child: Icon(Icons.add, size: 18)),
                              )
                            ],
                          ),
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
