import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/presentation/authentication/otp_screen/widgets/bottom_button_area.dart';
import 'package:profac/presentation/authentication/otp_screen/widgets/otp_field.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key, required this.mobileNumber});
  final int mobileNumber;
  final ValueNotifier<int> timerNotifier = ValueNotifier<int>(30);
  final TextEditingController otpController = TextEditingController();
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
                  '+91 $mobileNumber',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            VerticalSpace(20),
            OtpField(otpController: otpController),
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
                    if (timer != null && timer!.isActive) {
                      return;
                    }
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(AuthenticationEvent.sendOTP(mobileNumber));
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
            BottomButtonArea(
                otpController: otpController, mobileNumber: mobileNumber),
            VerticalSpace(40.h),
          ],
        ),
      ),
    );
  }
}
