import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/order/widgets/coupon_tile.dart';

class CouponsBottomSheet extends StatelessWidget {
  const CouponsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.8,
      maxChildSize: 1,
      expand: true,
      builder: (context, controller) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 26,
              right: 26,
            ),
            child: ListView(
              controller: controller,
              children: [
                SearchBox(
                  hintText: "Search for coupons",
                ),
                VerticalSpace(16),
                Text("Applied coupon",
                    style: Theme.of(context).textTheme.titleLarge),
                VerticalSpace(16),
                ...List.generate(
                  1,
                  (index) {
                    return CouponTile(
                      isApplied: true,
                    );
                  },
                ),
                VerticalSpace(16),
                Text("Applied coupon",
                    style: Theme.of(context).textTheme.titleLarge),
                VerticalSpace(16),
                ...List.generate(
                  7,
                  (index) {
                    if (index.isOdd) {
                      return VerticalSpace(16);
                    }
                    return CouponTile();
                  },
                ),
                VerticalSpace(20),
              ],
            ),
          ),
        );
      },
    );
  }
}
