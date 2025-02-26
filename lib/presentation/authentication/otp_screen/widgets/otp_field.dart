import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    super.key,
    required this.otpController,
  });

  final TextEditingController otpController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: otpController,
      length: 6,
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
    );
  }
}
