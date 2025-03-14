import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/authentication/login_screen/widgets/login_form.dart';

class LoginBox extends StatelessWidget {
  const LoginBox(
      {super.key,
      required this.isExpanded,
      required this.shrink,
      required this.expand,
      required this.emailAdressController});
  final bool isExpanded;
  final VoidCallback shrink;
  final VoidCallback expand;
  final TextEditingController emailAdressController;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 500),
      width: 375.w,
      height: isExpanded ? 812.h : 397.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: LoginForm(
          emailAdressController: emailAdressController,
          isExpanded: isExpanded,
          shrink: shrink,
          expand: expand,
        ),
      ),
    );
  }
}
