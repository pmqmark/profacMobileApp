import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/settings/delete_profile/delete_profile_bloc.dart';
import 'package:profac/application/verification/verification_bloc.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});
  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  bool _isResendEnabled = false;
  int _timer = 30;
  final otpController = TextEditingController();
  final emailController = TextEditingController();
  void _startTimer() {
    setState(() {
      _isResendEnabled = false;
      _timer = 30;
    });

    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      if (_timer > 0) {
        setState(() {
          _timer--;
        });
        return true;
      } else {
        setState(() {
          _isResendEnabled = true;
        });
        return false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
      profileLoaded: (state) {
        setState(() {
          emailController.text = state.model.email;
        });
        log("Email: ${emailController.text}");
      },
    );
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<VerificationBloc, VerificationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            otpVerified: (value) {
              BlocProvider.of<DeleteProfileBloc>(context).add(
                DeleteProfileEvent.deleteProfile(
                  emailController.text,
                  otpController.text,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return BlocConsumer<DeleteProfileBloc, DeleteProfileState>(
            listener: (context, deleteState) {
              deleteState.maybeMap(
                orElse: () {},
                profileDeleted: (value) {
                  Navigator.of(context).pushNamed('/delete_account_success');
                },
              );
            },
            builder: (context, deleteState) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VerticalSpace(10),
                          BackButton(
                            color: Colors.black,
                          ),
                          VerticalSpace(20),
                          Text("Enter verification code",
                              style: Theme.of(context).textTheme.titleLarge),
                          VerticalSpace(10),
                          Text(
                              "We have sent a verification code to your email address",
                              style: Theme.of(context).textTheme.bodyMedium),
                          VerticalSpace(5),
                          Text("WARNING:",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            '''After submitting OTP your account will permanently remove all associated data. This action cannot be undone. Are you sure you want to delete your account?''',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 10,
                            ),
                          ),
                          VerticalSpace(25),
                          Pinput(
                            controller: otpController,
                            length: 6,
                            defaultPinTheme: PinTheme(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black26),
                              ),
                            ),
                          ),
                          VerticalSpace(12),
                          SizedBox(
                            height: 18,
                            child: TextButton(
                              onPressed: _isResendEnabled
                                  ? () {
                                      _startTimer();
                                      // Add logic to resend OTP here

                                      BlocProvider.of<VerificationBloc>(context)
                                          .add(
                                        VerificationEvent.sendOtp(
                                            emailController.text),
                                      );
                                    }
                                  : null,
                              child: Text(
                                _isResendEnabled
                                    ? "Resend OTP"
                                    : "Resend OTP in $_timer s",
                                style: TextStyle(
                                    color: _isResendEnabled
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                    fontSize: 14),
                              ),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                          VerticalSpace(20),
                          BottomSaveButton(
                            onPressed: () {
                              if (otpController.text.isEmpty ||
                                  otpController.text.length != 6) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "Please enter a valid 6-digit OTP."),
                                  ),
                                );
                                return;
                              }
                              BlocProvider.of<VerificationBloc>(context).add(
                                VerificationEvent.verifyOtp(
                                  email: emailController.text,
                                  otp: otpController.text,
                                ),
                              );
                            },
                            text: "Submit",
                          )
                        ],
                      ),
                    ),
                  ),
                  state.maybeMap(orElse: () {
                    return const SizedBox.shrink();
                  }, loading: (_) {
                    return SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black26),
                        child: Center(
                          child: ProfacLoadingIndicator(),
                        ),
                      ),
                    );
                  }),
                  deleteState.maybeMap(orElse: () {
                    return const SizedBox.shrink();
                  }, loading: (_) {
                    return SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black26),
                        child: Center(
                          child: ProfacLoadingIndicator(),
                        ),
                      ),
                    );
                  })
                ],
              );
            },
          );
        },
      ),
    );
  }
}
