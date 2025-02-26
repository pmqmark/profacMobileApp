import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/authentication/auth_success_screen/auth_success_screen.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(70),
              Text(
                'User Information',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              VerticalSpace(5),
              Text(
                'Please let us know your name',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              VerticalSpace(10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Type your name here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[100],
                ),
              ),
              Spacer(),
              Row(
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
                  BlocConsumer<ProfileBloc, ProfileState>(
                    listener: (context, state) {
                      state.maybeMap(
                        profileUpdated: (value) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AuthSuccessScreen()));
                        },
                        error: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                value.failure.maybeMap(
                                  serverFailure: (_) => 'Server error',
                                  noInternetConnection: (_) =>
                                      'No internet connection',
                                  orElse: () => 'Something went wrong',
                                ),
                              ),
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
                            onPressed: () {
                              BlocProvider.of<ProfileBloc>(context).add(
                                ProfileEvent.updateProfile(
                                  name: _nameController.text,
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
                              BlocProvider.of<ProfileBloc>(context).add(
                                ProfileEvent.updateProfile(
                                  name: _nameController.text,
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_sharp,
                              size: 20,
                              color: Theme.of(context).primaryColor,
                            ),
                            label: Text(
                              "Next",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
              ),
              VerticalSpace(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
