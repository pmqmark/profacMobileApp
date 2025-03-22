import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/domain/cart/model/cart_item_model.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/presentation/common_widgets/border_progress_indicator.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.subServiceCartModel,
    required this.categoryId,
    this.isItemsAdding = false,
  });
  final String categoryId;
  final SubServiceCartModel subServiceCartModel;
  final bool isItemsAdding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subServiceCartModel.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        VerticalSpace(8),
        ...List.generate(
            (BlocProvider.of<CartItemsBloc>(context)
                    .state
                    .cartItems[categoryId]![subServiceCartModel.id]!
                    .length *
                2), (index) {
          if (index.isOdd) {
            return VerticalSpace(8);
          }
          return Builder(builder: (context) {
            final optionid = BlocProvider.of<CartItemsBloc>(context)
                .state
                .cartItems[categoryId]![subServiceCartModel.id]!
                .keys
                .toList()[index ~/ 2];
            final optionCartModel = subServiceCartModel.optionModels
                .firstWhere((element) => element.id == optionid);
            return SubServiceItem(
              optionCartModel: optionCartModel,
              categoryId: categoryId,
              subserviceId: subServiceCartModel.id,
              isItemsAdding: isItemsAdding,
            );
          });
        }),
      ],
    );
  }
}

class SubServiceItem extends StatelessWidget {
  const SubServiceItem({
    super.key,
    required this.optionCartModel,
    required this.categoryId,
    required this.subserviceId,
    required this.isItemsAdding,
  });
  final OptionCartModel optionCartModel;
  final String categoryId;
  final String subserviceId;
  final bool isItemsAdding;
  @override
  Widget build(BuildContext context) {
    final int quantity = BlocProvider.of<CartItemsBloc>(context)
        .state
        .cartItems[categoryId]![subserviceId]![optionCartModel.id]!;
    final CartItemModel cartItemModel = CartItemModel(
      categoryId: categoryId,
      subserviceId: subserviceId,
      optionId: optionCartModel.id,
      quantity: quantity,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.circle, color: Colors.grey[300], size: 9),
        HorizontalSpace(10),
        Text(
          optionCartModel.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Spacer(),
        QuantityCouter(
            cartItemModel: cartItemModel,
            quantity: quantity,
            isItemsAdding: isItemsAdding),
        HorizontalSpace(10),
        SizedBox(
          width: 45.w,
          child: Align(
            alignment: Alignment.centerRight,
            child: AutoSizeText(
              minFontSize: 10,
              "₹${(optionCartModel.price) * quantity}",
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
  }
}

class QuantityCouter extends StatelessWidget {
  const QuantityCouter({
    super.key,
    required this.cartItemModel,
    required this.quantity,
    required this.isItemsAdding,
  });
  final bool isItemsAdding;
  final CartItemModel cartItemModel;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return BorderProgressIndicator(
      isLoading: isItemsAdding,
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 74.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFFE2F6E2),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Theme.of(context).primaryColor.withAlpha(64),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.read<CartItemsBloc>().add(
                          CartItemsEvent.addCartItem(cartItemModel.copyWith(
                              quantity: cartItemModel.quantity - 1)));
                    },
                    child: Icon(
                      Icons.remove,
                      size: 16,
                    ),
                  ),
                ),
                Expanded(
                    child: Text(
                  "$quantity",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.read<CartItemsBloc>().add(
                          CartItemsEvent.addCartItem(cartItemModel.copyWith(
                              quantity: cartItemModel.quantity + 1)));
                    },
                    child: Icon(
                      Icons.add,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
