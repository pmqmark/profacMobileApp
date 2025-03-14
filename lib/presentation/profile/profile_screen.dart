import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/profile/widgets/edit_profile_sheet.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List<Map<String, dynamic>> myPlansList = [
    {'icon': Icons.assignment_outlined, 'text': 'My Plans'},
    {'icon': Icons.account_balance_wallet_outlined, 'text': 'Wallet'},
    {
      'icon': Icons.location_on_outlined,
      'text': 'Manage Address',
      'route': '/manage_address'
    },
    {'icon': Icons.payment_outlined, 'text': 'Payment methods'},
    {'icon': Icons.settings_outlined, 'text': 'Settings'},
    {'icon': Icons.info_outline, 'text': 'About'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocConsumer<ProfileBloc, ProfileState>(
                  listener: (context, state) {
                // TODO: implement listener
              }, builder: (context, state) {
                return state.maybeMap(orElse: () {
                  return VerticalSpace(60);
                }, profileLoaded: (state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.model.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditProfileScreen(
                                        name: state.model.name,
                                        phoneNumber: state.model.mobile,
                                        email: state.model.email,
                                      )));
                            },
                            icon: Icon(
                              Icons.edit_outlined,
                              color: Colors.black45,
                            ),
                          )
                        ],
                      ),
                      Text(state.model.mobile),
                      Text(state.model.email)
                    ],
                  );
                });
              }),
              VerticalSpace(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.featured_play_list_outlined,
                        color: Colors.black87),
                    label: Text(
                      'My bookings',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.black12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
                    ),
                  ),
                  HorizontalSpace(10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.info_outline, color: Colors.black87),
                    label: Text(
                      'Help & Support',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.black12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
                    ),
                  ),
                ],
              ),
              VerticalSpace(36),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (myPlansList[index]['route'] != null) {
                        Navigator.of(context)
                            .pushNamed(myPlansList[index]['route']);
                      }
                    },
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    leading: Icon(
                      myPlansList[index]['icon'],
                      size: 18,
                    ),
                    title: Text(
                      myPlansList[index]['text'],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 18,
                    ),
                  );
                },
                itemCount: myPlansList.length,
              ),
              VerticalSpace(23),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(AuthenticationEvent.logout());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color(0xFFFFEDED),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.black87,
                      ),
                      Text(
                        'Logout',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
