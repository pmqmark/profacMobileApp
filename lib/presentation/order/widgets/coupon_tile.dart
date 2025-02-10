import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class CouponTile extends StatelessWidget {
  const CouponTile({
    super.key,
    this.isApplied = false,
  });
  final bool isApplied;
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
                '50%',
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
                  "Welcome50",
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
                      "Use code Welcome50 & get 50% of on all orders above ₹2,500.",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                trailing: GestureDetector(
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
