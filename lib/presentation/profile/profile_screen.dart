import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/profile/widgets/edit_profile_sheet.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List<Map<String, dynamic>> myPlansList = [
    {'icon': Icons.assignment_outlined, 'text': 'My Plans'},
    {'icon': Icons.account_balance_wallet_outlined, 'text': 'Wallet'},
    {'icon': Icons.star_border_outlined, 'text': 'Plus Membership'},
    {'icon': Icons.location_on_outlined, 'text': 'Manage Address'},
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reo George",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (context) {
                          return EditProfileSheet();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit_outlined,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              Text('+91 73065 61022'),
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
                    onTap: () {},
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
                  onPressed: () {},
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
