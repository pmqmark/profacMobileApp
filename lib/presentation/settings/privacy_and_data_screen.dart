import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/verification/verification_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class PrivacyAndDataScreen extends StatelessWidget {
  const PrivacyAndDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<VerificationBloc, VerificationState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            otpSent: (value) {
              Navigator.of(context).pushNamed('/delete_account');
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      children: [
                        VerticalSpace(50),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: BackButton(
                            color: Colors.black,
                          ),
                        ),
                        VerticalSpace(20),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Privacy Center",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        VerticalSpace(30),
                        Text("Account Deletion Policy",
                            style: Theme.of(context).textTheme.titleLarge),
                        VerticalSpace(10),
                        ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.black38,
                                    size: 6,
                                  ),
                                ),
                                Expanded(
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return VerticalSpace(10);
                          },
                          itemCount: 3,
                        )
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1, color: Colors.black26),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Colors.black26),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                BlocProvider.of<ProfileBloc>(context)
                                    .state
                                    .mapOrNull(
                                  profileLoaded: (state) {
                                    BlocProvider.of<VerificationBloc>(context)
                                        .add(
                                      VerificationEvent.sendOtp(
                                          state.model.email),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "Delete Account",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 13),
                              ),
                            ),
                          ),
                          HorizontalSpace(8),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Colors.black26),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/download_data');
                              },
                              child: Text(
                                "Download Data",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              state.maybeMap(
                loading: (value) => SizedBox.expand(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                    ),
                    child: Center(
                      child: ProfacLoadingIndicator(),
                    ),
                  ),
                ),
                orElse: () => SizedBox.shrink(),
              )
            ],
          );
        },
      ),
    );
  }
}
