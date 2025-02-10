import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/home/home.dart';

class AuthSuccessScreen extends StatelessWidget {
  const AuthSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VerticalSpace(100),
              Container(
                width: 72.w,
                height: 72.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context)
                      .elevatedButtonTheme
                      .style
                      ?.backgroundColor
                      ?.resolve({WidgetState.selected}),
                ),
                child: Center(
                  child: Icon(Icons.check),
                ),
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
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => HomeScreen()),
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
