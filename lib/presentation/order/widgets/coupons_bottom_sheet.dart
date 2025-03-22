import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/checkout/coupons/coupons_bloc.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/order/widgets/coupon_tile.dart';

class CouponsBottomSheet extends StatefulWidget {
  const CouponsBottomSheet({
    super.key, required this.amountBodyModel,
  });
  final AmountBodyModel amountBodyModel;
  @override
  State<CouponsBottomSheet> createState() => _CouponsBottomSheetState();
}

class _CouponsBottomSheetState extends State<CouponsBottomSheet> {
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
            child: BlocBuilder<CouponsBloc, CouponsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.failure != null) {
                  return Center(
                    child: Text("Something went wrong"),
                  );
                }
                if (state.coupons.isEmpty) {
                  return Center(
                    child: Text("No coupons available"),
                  );
                }
                return ListView(
                  controller: controller,
                  children: [
                    SearchBox(
                      hintText: "Search for coupons",
                      controller: TextEditingController(),
                    ),
                    VerticalSpace(16),
                    if (state.selectedCoupon != null) ...[
                      Text("Applied coupon",
                          style: Theme.of(context).textTheme.titleLarge),
                      VerticalSpace(16),
                      ...List.generate(
                        1,
                        (index) {
                          return CouponTile(
                            isApplied: true,
                            couponModel: state.selectedCoupon!,
                            amountBodyModel: widget.amountBodyModel,
                          );
                        },
                      ),
                    ],
                    VerticalSpace(16),
                    Text("All Coupons",
                        style: Theme.of(context).textTheme.titleLarge),
                    VerticalSpace(16),
                    ...List.generate(
                      state.coupons.length * 2,
                      (index) {
                        if (index.isOdd) {
                          return VerticalSpace(16);
                        }
                        return CouponTile(
                          couponModel: state.coupons[(index / 2).floor()],
                          amountBodyModel: widget.amountBodyModel,
                        );
                      },
                    ),
                    VerticalSpace(20),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
