import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/infrastructure/cart/cart_repo.dart';
import 'package:profac/presentation/common_widgets/border_progress_indicator.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/mainmenu/widgets/mainmenu_body.dart';
import 'package:profac/presentation/service/service_screen.dart';
import 'package:profac/presentation/service/widgets/sub_service_sheet.dart';

class ServiceListItem extends StatelessWidget {
  ServiceListItem(
      {super.key, required this.subServiceModel});
  final SubServiceModel subServiceModel;
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
                          ),
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
        builder: (context, state) {
      final currentItem = CartItemModel(
          categoryId: subServiceModel.options[0].categoryId,
          subserviceId: subServiceModel.id,
          optionId: subServiceModel.options[0].id,
          quantity: 0);
      final quantity = CartRepo().getQuantity(context, currentItem);
      if (quantity > 0 && subServiceModel.options.length == 1) {
        return BorderProgressIndicator(
          isLoading: state.cartItemAdding,
          borderRadius: BorderRadius.circular(10.0),
          child: DecoratedBox(
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
                          if (quantity > 0) {
                            BlocProvider.of<CartItemsBloc>(context).add(
                              CartItemsEvent.addCartItem(
                                currentItem.copyWith(quantity: quantity - 1),
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
                          BlocProvider.of<CartItemsBloc>(context).add(
                            CartItemsEvent.addCartItem(
                              currentItem.copyWith(quantity: quantity + 1),
                            ),
                          );
                        },
                        child: Icon(Icons.add, size: 18)),
                  )
                ],
              ),
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
                  subServiceId: subServiceModel.id,
                  subServiceName: subServiceModel.name,
                ),
              );
            } else {
              BlocProvider.of<CartItemsBloc>(context).add(
                CartItemsEvent.addCartItem(
                  currentItem.copyWith(quantity: quantity + 1),
                ),
              );
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
