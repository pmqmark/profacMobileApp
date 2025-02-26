import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/domain/authentication/i_authentication_repo.dart';
import 'package:profac/presentation/authentication/auth_success_screen/auth_success_screen.dart';
import 'package:profac/presentation/authentication/user_info_screen/user_info_screen.dart';

class BottomButtonArea extends StatelessWidget {
  const BottomButtonArea({
    super.key,
    required this.otpController,
    required this.mobileNumber,
  });

  final TextEditingController otpController;
  final int mobileNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.maybeMap(
              otpVerified: (value) {
                if (value.type == AuthenticationType.signUp) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserInfoScreen()));
                  return;
                }
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AuthSuccessScreen()));
              },
              verificationError: (value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value.failure.maybeMap(
                      clientFailure: (_) => 'Something went wrongeee',
                      serverFailure: (_) => 'Server error',
                      otherFailure: (_) => 'Invalid OTP',
                      authFailure: (_) => 'Invalid OTP',
                      noInternetConnection: (_) => 'No internet connection',
                      orElse: () => 'Something went wrongaa',
                    )),
                  ),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
                return ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(120),
                    ),
                  ),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                );
              },
              orElse: () {
                return ElevatedButton.icon(
                  onPressed: () {
                    if (otpController.text.length != 6) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Invalid OTP'),
                        ),
                      );
                      return;
                    }
                    int otp = int.tryParse(otpController.text) ?? 0;
                    if (otp == 0) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Invalid OTP'),
                        ),
                      );
                      return;
                    }
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      AuthenticationEvent.verifyOTP(
                          otp: otpController.text, mobileNumber: mobileNumber),
                    );
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
                );
              },
            );
          },
        ),
      ],
    );
  }
}
