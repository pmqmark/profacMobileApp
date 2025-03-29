import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
      child: BlocBuilder<BookingAmountBloc, BookingAmountState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Skeletonizer(
              child: _buildSuccess(
                  AmountModel(
                    discountAmount: 0,
                    subtotal: 0,
                    tip: 0,
                    totalTax: 0,
                    totalamount: 0,
                  ),
                  context),
            );
          }
          if (state.amount != null) {
            return _buildSuccess(state.amount!, context);
          }

          return Center(
            child: Text("Failed to load amount"),
          );
        },
      ),
    );
  }

  Padding _buildSuccess(AmountModel amountmodel, BuildContext context) {
    return Padding(
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
                "${amountmodel.subtotal}",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              HorizontalSpace(8),
              Text(
                "₹${amountmodel.totalamount}",
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
            PaymentItem(
              title: "item total",
              amount: amountmodel.subtotal,
            ),
            if (amountmodel.totalTax != 0) ...[
              PaymentItem(
                title: "tax",
                amount: amountmodel.totalTax,
              ),
              VerticalSpace(8),
            ],
            if (amountmodel.tip != 0) ...[
              PaymentItem(
                title: "Tip",
                amount: amountmodel.tip,
              ),
              VerticalSpace(8),
            ],
            if (amountmodel.discountAmount != 0) ...[
              PaymentItem(
                title: "Discount",
                amount: amountmodel.discountAmount,
                isDiscounted: true,
              ),
              VerticalSpace(8),
            ]
          ],
          VerticalSpace(6),
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
                "₹${amountmodel.totalamount}",
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
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    this.isDiscounted = false,
    required this.title,
    required this.amount,
  });
  final String title;
  final double amount;
  final bool isDiscounted;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
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
          "₹$amount",
          style: TextStyle(
            color: isDiscounted ? Theme.of(context).primaryColor : Colors.black,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
