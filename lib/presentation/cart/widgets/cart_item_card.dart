import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });
  List<Widget> subServices() {
    return List.generate(
      2,
      (index) {
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
                "Intensive cleaning (2 bathrooms) X 1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              )
            ],
          ),
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
                        "Bathroom & Kitchen Cleaning",
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
                          Text("1 Service",
                              style: Theme.of(context).textTheme.titleMedium),
                          HorizontalSpace(16),
                          Icon(Icons.circle, size: 7),
                          HorizontalSpace(16),
                          Text("₹500",
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
                      "View more",
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
                    onPressed: () {},
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
