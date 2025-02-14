import 'package:flutter/material.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class FailureScreen extends StatelessWidget {
  FailureScreen({super.key, required this.failure, required this.onPressed}) {
    if (failure is PermissionFailure) {
      message = 'Please enable location permission to continue';
      image = 'assets/failure/location_failure.png';
      title = 'Help Us Locate You!';
      buttonText = "Enable Location";
    } else if (failure is NoInternetConnection) {
      message = "It seems you're offline. Please reconnect and retry";
      image = 'assets/failure/no_internet_failure.png';
      title = "You're Offline !";
      buttonText = "Try again";
    } else {
      message =
          "Our system's pipes are a bit clogged right now. Our repair crew is on it - please check back shortly!";
      image = 'assets/failure/repair_failure.png';
      title = 'Under Repair !';
      buttonText = "Try again";
    }
  }
  final MainFailure failure;
  late String message;
  late String image;
  late String title;
  late String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            image,
            height: 274,
          ),
          VerticalSpace(50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
          VerticalSpace(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: BottomSaveButton(onPressed: onPressed, text: buttonText),
          ),
        ],
      ),
    );
  }
}
