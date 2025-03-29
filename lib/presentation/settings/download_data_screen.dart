import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/settings/download_data/download_data_bloc.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class DownloadDataScreen extends StatefulWidget {
  DownloadDataScreen({super.key});

  @override
  State<DownloadDataScreen> createState() => _DownloadDataScreenState();
}

class _DownloadDataScreenState extends State<DownloadDataScreen> {
  final TextEditingController emailController = TextEditingController();
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).state.mapOrNull(
      profileLoaded: (state) {
        emailController.text = state.model.email;
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<DownloadDataBloc, DownloadDataState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Something went wrong"),
                ),
              );
            },
            dataDownloaded: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "Data has been sent to your email",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
              );
              Navigator.of(context).pop();
            },
          );
        },
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSpace(20),
                      BackButton(
                        color: Colors.black,
                      ),
                      VerticalSpace(10),
                      Text("Email Id",
                          style: Theme.of(context).textTheme.titleLarge),
                      VerticalSpace(10),
                      Text("Your all details will be sent on this Email",
                          style: Theme.of(context).textTheme.bodyMedium),
                      VerticalSpace(20),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      VerticalSpace(40),
                      BottomSaveButton(
                          onPressed: () {
                            if (emailController.text.isEmpty ||
                                !RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                    .hasMatch(emailController.text)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                      "Please enter a valid email address"),
                                ),
                              );
                              return;
                            }
                            BlocProvider.of<DownloadDataBloc>(context).add(
                              DownloadDataEvent.downloadData(
                                  emailController.text),
                            );
                          },
                          text: "Submit")
                    ],
                  ),
                ),
                state.maybeMap(orElse: () {
                  return SizedBox();
                }, loading: (value) {
                  return SizedBox.expand(
                    child: Container(
                      color: Colors.black26,
                      child: Center(
                        child: ProfacLoadingIndicator(),
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
