import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/verification/verification_bloc.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class EditProfileScreen extends StatefulWidget {
 const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  bool isOTPSent = true;
  bool isOTPVerified = true;
    final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  @override
  void initState() { 
    BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
      profileLoaded: (state) {
        nameController.text = state.model.name;
        mobileNumberController.text = state.model.mobile;
        emailAddressController.text = state.model.email;
      },
    );
    // TODO: implement initState
    super.initState();
  }
  final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, profileState) {
          profileState.mapOrNull(
            profileUpdated: (value) {
              Navigator.of(context).pop();
              BlocProvider.of<ProfileBloc>(context).add(
                ProfileEvent.updateProfile(value.model),
              );
            },
          );
        },
        builder: (context, profileState) {
          return BlocConsumer<VerificationBloc, VerificationState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                otpSent: (value) {
                  setState(() {
                    isOTPSent = true;
                  });
                },
                otpVerified: (value) {
                  setState(() {
                    isOTPVerified = true;
                  });
                },
                error: (value) {
                  if (value.failure is OtherFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid OTP"),
                      ),
                    );
                  } else if (value.failure is Conflict) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Email already exists"),
                      ),
                    );
                  }
                },
              );
            },
            builder: (context, state) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        VerticalSpace(50),
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
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Full name",
                          ),
                          keyboardType: TextInputType.name,
                        ),
                        VerticalSpace(5),
                        Text(
                          "Moblie Number",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        VerticalSpace(5),
                        TextFormField(
                          controller: mobileNumberController,
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        VerticalSpace(5),
                        Text(
                          "Email",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        VerticalSpace(5),
                        TextFormField(
                          controller: emailAddressController,
                          decoration: InputDecoration(
                            hintText: "Email address",
                          ),
                          onChanged: (value) {
                            if (isOTPSent || isOTPVerified) {
                              setState(() {
                                isOTPSent = false;
                                isOTPVerified = false;
                              });
                              otpController.clear();
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        VerticalSpace(16),
                        if (isOTPSent && !isOTPVerified)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OTP",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              VerticalSpace(5),
                              Pinput(
                                controller: otpController,
                                length: 6,
                                defaultPinTheme: PinTheme(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium,
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
                                  textStyle:
                                      Theme.of(context).textTheme.bodyMedium,
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
                        Spacer(),
                        BottomSaveButton(
                          onPressed: () {
                            if (isOTPSent) {
                              if (isOTPVerified) {
                                BlocProvider.of<ProfileBloc>(context).add(
                                  ProfileEvent.updateProfileFields(
                                    name: nameController.text,
                                    phoneNumber:
                                        mobileNumberController.text,
                                    email: emailAddressController.text,
                                  ),
                                );
                              } else {
                                final email =
                                    emailAddressController.text;
                                BlocProvider.of<VerificationBloc>(context)
                                    .add(VerificationEvent.verifyOtp(
                                  otp: otpController.text,
                                  email: email,
                                ));
                              }
                            } else {
                              final email = emailAddressController.text;
                              BlocProvider.of<VerificationBloc>(context)
                                  .add(VerificationEvent.sendOtp(email));
                            }
                          },
                          text: isOTPSent
                              ? isOTPVerified
                                  ? "Save and Continue"
                                  : "Verify email"
                              : "Send OTP",
                        ),
                        VerticalSpace(10),
                        SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom,
                        )
                      ],
                    ),
                  ),
                  state.maybeMap(
                    orElse: () => SizedBox(),
                    loading: (value) => SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black38),
                        child: Center(child: ProfacLoadingIndicator()),
                      ),
                    ),
                  ),
                  profileState.maybeMap(
                    orElse: () => SizedBox(),
                    loading: (value) => SizedBox.expand(
                      child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black38),
                        child: Center(child: ProfacLoadingIndicator()),
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
