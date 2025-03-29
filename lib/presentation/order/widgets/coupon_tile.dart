import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/application/checkout/coupons/coupons_bloc.dart';
import 'package:profac/domain/checkout/models/amount_model.dart';
import 'package:profac/domain/checkout/models/coupon_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CouponTile extends StatelessWidget {
  const CouponTile({
    super.key,
    this.isApplied = false,
    required this.couponModel,
    required this.amountBodyModel,
  });
  final bool isApplied;
  final CouponModel couponModel;
  final AmountBodyModel amountBodyModel;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isApplied
            ? Theme.of(context).primaryColor
            : Theme.of(context).primaryColor.withAlpha(60),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Transform.rotate(
            angle: -3.14 / 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                '${couponModel.discountValue}%',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: isApplied
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                border: Border(
                  right: BorderSide(
                    color: Colors.black26,
                    width: 1,
                  ),
                  top: BorderSide(
                    color: Colors.black26,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Colors.black26,
                    width: 1,
                  ),
                ),
              ),
              child: ListTile(
                dense: true,
                horizontalTitleGap: 4,
                title: Text(
                  couponModel.code,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8.h,
                  horizontal: 20.w,
                ),
                isThreeLine: true,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSpace(3),
                    Text(
                      "save ₹59 on this order",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    VerticalSpace(8),
                    Divider(
                      color: Colors.black12,
                    ),
                    VerticalSpace(8),
                    Text(
                      "Use code ${couponModel.code} & get ${couponModel.discountValue}% upto ${couponModel.maxDiscountAmount} of on all orders above ₹${couponModel.minOrderAmount}",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: GestureDetector(
                  onTap: () {
                    isApplied
                        ? context.read<CouponsBloc>().add(
                              CouponsEvent.removeCoupon(),
                            )
                        : context.read<CouponsBloc>().add(
                              CouponsEvent.selectCoupon(couponModel),
                            );
                    context.read<BookingAmountBloc>().add(
                          BookingAmountEvent.fetchTotalAmount(
                            
                          ),
                        );
                    Navigator.pop(context);
                  },
                  child: Text(
                    isApplied ? "Remove" : "Apply",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
