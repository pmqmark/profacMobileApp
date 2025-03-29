import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/domain/cart/model/cart_reponse_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    super.key,
    required this.cartModel,
  });
  final CartModel cartModel;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int optionsCount = 0;
  double totalAmount = 0.0;
  @override
  initState() {
    super.initState();
    widget.cartModel.subServiceModels.forEach((element) {
      optionsCount += element.optionModels.length;
      element.optionModels.forEach((element) {
        totalAmount += element.price * element.quantity;
      });
    });
  }

  List<Widget> subServices() {
    return List.generate(
      widget.cartModel.subServiceModels.length,
      (index) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            final option =
                widget.cartModel.subServiceModels[index].optionModels[i];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.grey[300],
                    size: 7,
                  ),
                  HorizontalSpace(8),
                  Text(
                    "${option.name} X ${option.quantity}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            );
          },
          itemCount:
              widget.cartModel.subServiceModels[index].optionModels.length,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        child: Column(
          children: [
            VerticalSpace(8),
            Row(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19),
                    child: Icon(
                      Icons.cleaning_services_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                HorizontalSpace(16),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.cartModel.categoryName,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 20.sp,
                            ),
                        softWrap: true,
                      ),
                      VerticalSpace(8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("$optionsCount services",
                              style: Theme.of(context).textTheme.titleMedium),
                          HorizontalSpace(16),
                          Icon(Icons.circle, size: 7),
                          HorizontalSpace(16),
                          Text("₹$totalAmount",
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            VerticalSpace(12),
            ...subServices(),
            VerticalSpace(12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Add more",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                HorizontalSpace(8),
                Expanded(
                  child: ElevatedButton(
                    style:
                        Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: WidgetStateProperty.all(
                                  Theme.of(context).primaryColor),
                              padding: WidgetStateProperty.all(EdgeInsets.zero),
                            ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OrderSummaryScreen(
                            categoryId: widget.cartModel.categoryId,
                            amount: totalAmount,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
