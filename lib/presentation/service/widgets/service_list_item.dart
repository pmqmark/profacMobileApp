import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/service_screen.dart';
import 'package:profac/presentation/service/widgets/sub_service_sheet.dart';

class ServiceListItem extends StatelessWidget {
  ServiceListItem(
      {super.key, required this.subServiceModel, required this.categoryId});
  final SubServiceModel subServiceModel;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(15),
              Text(
                subServiceModel.name,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              VerticalSpace(4),
              Row(
                children: [
                  if (subServiceModel.avgRating != 0) ...[
                    Icon(Icons.star, color: Colors.amber, size: 18),
                    HorizontalSpace(5)
                  ],
                  if (subServiceModel.reviewCount != 0)
                    Text(
                      "${subServiceModel.avgRating == 0 ? '' : subServiceModel.avgRating} (${subServiceModel.reviewCount} bookings)",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                ],
              ),
              if (subServiceModel.options.length == 1) ...[
                VerticalSpace(4),
                Row(
                  children: [
                    Text(
                      "₹${subServiceModel.options[0].price}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    HorizontalSpace(5),
                    Icon(Icons.circle, size: 4, color: Colors.grey[400]),
                    HorizontalSpace(5),
                    Text(
                      "${subServiceModel.options[0].duration ~/ 60 > 0 ? '${subServiceModel.options[0].duration ~/ 60}hrs ' : ''}${subServiceModel.options[0].duration % 60 > 0 ? '${subServiceModel.options[0].duration % 60}mins' : ''}",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                )
              ],
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ServiceScreen(
                          subServiceId: subServiceModel.id,
                          categoryId: categoryId),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "View details",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
              VerticalSpace(5)
            ],
          ),
        ),
        HorizontalSpace(35),
        Column(
          children: [
            VerticalSpace(subServiceModel.media.isNotEmpty ? 40 : 10),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                if (subServiceModel.media.isNotEmpty)
                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Image.network(
                      subServiceModel.media[0].location,
                      width: 90,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return ColoredBox(
                          color: Colors.grey[300]!,
                          child: SizedBox(
                            width: 90,
                            height: 60,
                          ),
                        );
                      },
                    ),
                  ),
                _buildAddItemCountWidget()
              ],
            ),
            VerticalSpace(5),
            if (subServiceModel.options.length > 1)
              Text('${subServiceModel.options.length} options',
                  style: Theme.of(context).textTheme.labelSmall),
          ],
        )
      ],
    );
  }

  Widget _buildAddItemCountWidget() {
    return BlocBuilder<CartItemsBloc, CartItemsState>(
        buildWhen: (previous, current) {
      return true;
    }, builder: (context, state) {
      log("message", name: "ServiceListItem");
      final List<CartItemModel> items = state.map(
        initial: (_) => [],
        hasItemsState1: (value) => value.cartitems,
        hasItemsState2: (value) => value.cartitems,
      );
      final itemIndex = items
          .indexWhere((item) => item.optionId == subServiceModel.options[0].id);
      if (itemIndex != -1 && subServiceModel.options.length == 1) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: SizedBox(
            width: 90,
            height: 35,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        // decrease item count
                        final count = items[itemIndex].quantity;
                        BlocProvider.of<CartItemsBloc>(context).add(
                          CartItemsEvent.updateCartItem(
                            items[itemIndex].copyWith(quantity: count - 1),
                          ),
                        );
                      },
                      child: Icon(Icons.remove, size: 18)),
                ),
                Expanded(
                  child: Text(
                    items[itemIndex].quantity.toString(),
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        // increase item count
                        final count = items[itemIndex].quantity;
                        BlocProvider.of<CartItemsBloc>(context).add(
                          CartItemsEvent.updateCartItem(
                            items[itemIndex].copyWith(quantity: count + 1),
                          ),
                        );
                      },
                      child: Icon(Icons.add, size: 18)),
                )
              ],
            ),
          ),
        );
      }
      return SizedBox(
        width: 90,
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            if (subServiceModel.options.length > 1) {
              showModalBottomSheet(
                context: context,
                builder: (context) => SubServiceSheet(
                  options: subServiceModel.options,
                  categoryId: categoryId,
                  subServiceId: subServiceModel.id,
                  subServiceName: subServiceModel.name,
                ),
              );
            } else {
              final itemIndex = items.indexWhere(
                  (item) => item.optionId == subServiceModel.options[0].id);
              if (itemIndex != -1) {
                BlocProvider.of<CartItemsBloc>(context).add(
                  CartItemsEvent.updateCartItem(
                    items[itemIndex]
                        .copyWith(quantity: items[itemIndex].quantity + 1),
                  ),
                );
                log('item count increased by 1');
              } else {
                BlocProvider.of<CartItemsBloc>(context).add(
                  CartItemsEvent.addCartItem(
                    CartItemModel(
                      optionId: subServiceModel.options[0].id,
                      categoryId: categoryId,
                      subserviceId: subServiceModel.id,
                      quantity: 1,
                    ),
                  ),
                );
                log('item added to  items with count 1');
              }
            }
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: Text(
            "Add",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ),
      );
    });
  }
}
