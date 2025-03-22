import 'package:flutter/material.dart';
import 'package:profac/presentation/bookings/widgets/product_details_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartViewMoreCategoryDetailes extends StatelessWidget {
  const CartViewMoreCategoryDetailes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15,
          top: 30,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bathroom and kitchen cleaning",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            VerticalSpace(5),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.black, size: 14),
                HorizontalSpace(5),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("4.55 (7.7 M bookings)",
                          style: Theme.of(context).textTheme.labelMedium),
                      VerticalSpace(3),
                      Padding(
                        padding: const EdgeInsets.only(right: 35, left: 2),
                        child: DottedLine(
                          thickness: 1,
                          color: Colors.black38,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(child: SizedBox())
              ],
            )
          ],
        ),
      ),
    );
  }
}
