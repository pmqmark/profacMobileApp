import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';

class TipCard extends StatelessWidget {
  const TipCard({
    super.key,
    required this.amountBodyModel,
  });
  final AmountBodyModel amountBodyModel;
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
            OrderTitle(
              title: "Tip",
            ),
            VerticalSpace(14),
            BlocBuilder<BookingAmountBloc, BookingAmountState>(
              builder: (context, state) {
                log("TipCard state: ${state.tip}", name: "TipCard");
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) {
                      return TipChip(
                        amount: (index + 1) * 25,
                        model: amountBodyModel,
                        isSelected: state.tip == (index + 1) * 25,
                      );
                    },
                  ),
                );
              },
            ),
            VerticalSpace(16),
            Text(
              "100% of tip goes to the professional",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class TipChip extends StatelessWidget {
  const TipChip({
    super.key,
    required this.amount,
    required this.model,
    this.isSelected = false,
  });
  final int amount;
  final AmountBodyModel model;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          context.read<BookingAmountBloc>().add(
                BookingAmountEvent.updateTip(amount),
              );
        } else {
          context.read<BookingAmountBloc>().add(
                BookingAmountEvent.updateTip(0),
              );
        }
      },
      child: Container(
        width: 64,
        padding: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColor.withAlpha(100),
          ),
          color: isSelected
              ? Theme.of(context).primaryColor.withAlpha(30)
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          "₹${amount}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
