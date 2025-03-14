import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/success_check.dart';
import 'package:profac/presentation/home/find_location_screen.dart';
import 'package:profac/presentation/home/home.dart';

class AuthSuccessScreen extends StatefulWidget {
  const AuthSuccessScreen({super.key});

  @override
  State<AuthSuccessScreen> createState() => _AuthSuccessScreenState();
}

class _AuthSuccessScreenState extends State<AuthSuccessScreen> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        checked = true;
      });
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSpace(100),
              SuccessCheck(
                isChecked: checked,
              ),
              VerticalSpace(30),
              Text(
                'Good to go',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              VerticalSpace(20),
              Text(
                "You'll be signed into your account in a moment.\n If nothing happens, click continue",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      BlocProvider.of<AuthenticationBloc>(context)
                          .add(AuthenticationEvent.reset());
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => FindLocationScreen()),
                          (route) => false);
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
                ),
              ),
              VerticalSpace(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
