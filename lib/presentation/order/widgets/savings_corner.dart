import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:profac/presentation/order/widgets/coupons_bottom_sheet.dart';

class SavingsCornerCard extends StatelessWidget {
  const SavingsCornerCard({
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
            OrderTitle(
              title: "Savings corner",
            ),
            ListTile(
              leading: Icon(
                Icons.confirmation_num,
                color: Theme.of(context).primaryColor,
              ),
              title: Row(
                children: [
                  Text(
                    "₹59 saved",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(" with welcome50"),
                ],
              ),
              subtitle: GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("view all coupons"),
                    HorizontalSpace(5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    ),
                  ],
                ),
              ),
              trailing: Icon(
                Icons.check,
                size: 17,
              ),
              contentPadding: EdgeInsets.zero,
              dense: false,
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  context: context,
                  isScrollControlled: false,
                  scrollControlDisabledMaxHeightRatio: 0.8,
                  builder: (context) {
                    return CouponsBottomSheet();
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
