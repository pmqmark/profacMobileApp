import 'package:animated_checkmark/animated_checkmark.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessCheck extends StatelessWidget {
  const SuccessCheck({
    super.key,
    this.isChecked = true,
  });
  final bool isChecked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.w,
      height: 72.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context)
            .elevatedButtonTheme
            .style
            ?.backgroundColor
            ?.resolve({WidgetState.selected}),
      ),
      child: Center(
        child: Checkmark(
          checked: isChecked,
          rounded: true,
          size: 50,
          color: Color(0xFF82CE85),
          weight: 6,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
