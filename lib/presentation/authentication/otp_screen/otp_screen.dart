import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:profac/presentation/authentication/auth_success_screen.dart/auth_success_screen.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final ValueNotifier<int> timerNotifier = ValueNotifier<int>(30);
  Timer? timer;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (timerNotifier.value == 0) {
          timer.cancel();
        } else {
          timerNotifier.value = timerNotifier.value - 1;
        }
      });
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(100),
            Text(
              'Enter the 4-digit code sent to you',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            VerticalSpace(6),
            Row(
              children: [
                Text(
                  'at ',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  '+91 9876543210',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            VerticalSpace(20),
            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                textStyle: Theme.of(context).textTheme.titleLarge,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 45,
                width: 52,
              ),
              focusedPinTheme: PinTheme(
                textStyle: Theme.of(context).textTheme.titleLarge,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                ),
                height: 45,
                width: 52,
              ),
            ),
            VerticalSpace(30),
            ValueListenableBuilder(
              valueListenable: timerNotifier,
              builder: (context, secs, _) {
                return ElevatedButton(
                  onPressed: () {
                    if (secs == 0) {
                      timerNotifier.value = 30;
                      timer =
                          Timer.periodic(const Duration(seconds: 1), (timer) {
                        if (timerNotifier.value == 0) {
                          timer.cancel();
                        } else {
                          timerNotifier.value = timerNotifier.value - 1;
                        }
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secs == 0
                        ? Theme.of(context).primaryColor
                        : Colors.grey[200],
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                  ),
                  child: Text(
                    "Resend code${secs == 0 ? "" : " ($secs)s"}",
                    style: TextStyle(
                      color: secs == 0 ? Colors.white : Colors.black45,
                      fontSize:
                          Theme.of(context).textTheme.titleMedium?.fontSize,
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.arrow_back_sharp,
                    size: 20,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AuthSuccessScreen()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_sharp,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    "Next",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(120),
                    ),
                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
            VerticalSpace(40.h),
          ],
        ),
      ),
    );
  }
}
