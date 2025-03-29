import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SavingsCard extends StatelessWidget {
  const SavingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingAmountBloc, BookingAmountState>(
      builder: (context, state) {
        if (state.amount == null) return SizedBox();
        if (state.amount!.discountAmount == 0) {
          return SizedBox();
        }
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.00, -0.03),
              end: Alignment(-1, 0.03),
              colors: [Color(0xFFE2F6E2), Colors.white, Color(0xFFE2F6E2)],
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0x3F379F53)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Text(
                "₹${state.amount!.discountAmount}",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
              HorizontalSpace(6),
              Text("saved with applied coupon")
            ],
          ),
        );
      },
    );
  }
}
