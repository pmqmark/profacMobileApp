import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/authentication/login_screen/widgets/phone_number_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm(
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(25.h),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: isExpanded ? 0 : 1,
            child: Image.asset(
              'assets/profac_logo.png',
              fit: BoxFit.fitHeight,
              height: 38.h,
            ),
          ),
          VerticalSpace(20.h),
          Text(
            'Enter your email',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          VerticalSpace(20),
          PhoneNumberInput(
              controller: emailAdressController,
              isExpanded: isExpanded,
              shrink: shrink,
              expand: expand),
          VerticalSpace(10),
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            child: isExpanded
                ? Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            final email = emailAdressController.text;
                            BlocProvider.of<AuthenticationBloc>(context)
                                .add(AuthenticationEvent.sendOTP(email));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                          child: Text("Next"),
                        ),
                      ),
                      VerticalSpace(10),
                      Text(
                          "By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from Profac and its affiliates to the number provided."),
                      VerticalSpace(10),
                    ],
                  )
                : SizedBox(),
          ),
          VerticalSpace(20),
          SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    'or',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          VerticalSpace(20),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () async {
                BlocProvider.of<AuthenticationBloc>(context)
                    .add(AuthenticationEvent.googleSignIn());
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                  side: BorderSide(
                    color: Colors.black12,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/google_logo.png',
                        width: 25.w,
                        height: 25.h,
                      ),
                    ),
                  ),
                  Text(
                    'Continue with Google',
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  Expanded(child: SizedBox())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
