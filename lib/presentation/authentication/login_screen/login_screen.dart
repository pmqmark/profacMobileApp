import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/presentation/authentication/login_screen/widgets/login_box.dart';
import 'package:profac/presentation/authentication/otp_screen/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isExpanded = false;
  final TextEditingController countryCodeController =
      TextEditingController(text: '+91');
  final TextEditingController mobileNumberController = TextEditingController();
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
        body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.maybeMap(
              otpSent: (value) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(
                      mobileNumber: value.mobileNumber,
                    ),
                  ),
                );
              },
              orElse: () {},
              error: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.failure.maybeMap(
                      clientFailure: (_) => 'Something went wrong 1',
                      serverFailure: (_) => 'Server error',
                      otherFailure: (_) => 'Something went wrong 2',
                      authFailure: (_) => 'Invalid mobile number',
                      noInternetConnection: (value) => 'No internet connection',
                      orElse: () => 'Something went wrong 3',
                    )),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return SizedBox(
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
                      mobileNumberController: mobileNumberController,
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
                  ),
                  state.mapOrNull(
                          loading: (_) => Container(
                                height: 812.h,
                                width: 375.w,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                ),
                                child: Center(
                                  child: LoadingAnimationWidget.dotsTriangle(
                                    color: Color(0xFFE2F6E2),
                                    size: 50,
                                  ),
                                ),
                              )) ??
                      SizedBox()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
