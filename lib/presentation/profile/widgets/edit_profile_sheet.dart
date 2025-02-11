import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pinput/pinput.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class EditProfileSheet extends StatefulWidget {
  EditProfileSheet({super.key});

  @override
  State<EditProfileSheet> createState() => _EditProfileSheetState();
}

class _EditProfileSheetState extends State<EditProfileSheet> {
  bool isOTPSent = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Edit Profile",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          VerticalSpace(20),
          Text(
            "Name",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          VerticalSpace(5),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Reo George",
            ),
          ),
          VerticalSpace(16),
          Text(
            "Phone Number",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          VerticalSpace(5),
          TextFormField(
            decoration: InputDecoration(
              hintText: "+91 89066518",
            ),
          ),
          VerticalSpace(16),
          TextButton(
            onPressed: () {
              setState(() {
                isOTPSent = true;
              });
            },
            child: Text(
              "verify number",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 16,
              ),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
          ),
          VerticalSpace(16),
          if (isOTPSent)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OTP",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                VerticalSpace(5),
                Pinput(
                  length: 4,
                  defaultPinTheme: PinTheme(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1,
                      ),
                    ),
                    height: 42,
                    width: 40,
                  ),
                  focusedPinTheme: PinTheme(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                    height: 42,
                    width: 40,
                  ),
                ),
                VerticalSpace(16),
              ],
            ),
          Divider(),
          VerticalSpace(10),
          BottomSaveButton(
            onPressed: () {},
            text: "Save and continue",
          ),
          VerticalSpace(10),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          )
        ],
      ),
    );
  }
}
