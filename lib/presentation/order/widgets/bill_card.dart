import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';

class BillCard extends StatelessWidget {
  const BillCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                OrderTitle(
                  title: "Total payment : ",
                ),
                Text(
                  "₹3786",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                HorizontalSpace(8),
                Text(
                  "₹3588",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            VerticalSpace(4),
            Row(
              children: [
                Text(
                  "₹59",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
                HorizontalSpace(6),
                Text("saved with applied coupon"),
              ],
            ),
            VerticalSpace(16),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            VerticalSpace(16),
            ...[
              PaymentItem(),
              VerticalSpace(8),
              PaymentItem(),
              VerticalSpace(8),
              PaymentItem(
                isDiscounted: true,
              ),
            ],
            VerticalSpace(16),
            Row(
              children: [
                Text(
                  "Total payment Amount",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                ),
                Spacer(),
                Text(
                  "₹2,549",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
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

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    this.isDiscounted = false,
  });
  final bool isDiscounted;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Item total",
          style: TextStyle(
            color: isDiscounted ? Theme.of(context).primaryColor : Colors.black,
            fontSize: 14.sp,
          ),
        ),
        Spacer(),
        if (isDiscounted)
          Icon(
            Icons.remove,
            color: Theme.of(context).primaryColor,
            size: 8,
          ),
        if (isDiscounted) HorizontalSpace(4),
        Text(
          "₹2,549",
          style: TextStyle(
            color: isDiscounted ? Theme.of(context).primaryColor : Colors.black,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
