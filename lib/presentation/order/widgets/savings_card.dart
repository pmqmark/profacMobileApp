import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SavingsCard extends StatelessWidget {
  const SavingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            "₹59",
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
  }
}
