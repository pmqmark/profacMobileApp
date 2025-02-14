import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/authentication/login_screen/widgets/login_box.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isExpanded = false;
  final TextEditingController countryCodeController =
      TextEditingController(text: '+91');
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        //if isExpanded is true then shrink the login box but don't pop the screen
        if (isExpanded) {
          setState(() {
            isExpanded = false;
          });
          FocusScope.of(context).unfocus();
        } else {
          //if isExpanded is false then pop the screen
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                opacity: isExpanded ? 0 : 1,
                child: Image(
                  height: 435.h,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/login_bgi.png',
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: LoginBox(
                  isExpanded: isExpanded,
                  shrink: () {
                    setState(() {
                      isExpanded = false;
                    });
                  },
                  expand: () {
                    setState(() {
                      isExpanded = true;
                    });
                  },
                  countryCodeController: countryCodeController,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
