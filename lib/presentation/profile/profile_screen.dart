import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                GestureDetector(
                  child: Icon(
                    Icons.edit_outlined,
                    color: Colors.black45,
                  ),
                )
              ],
            ),
            VerticalSpace(10),
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
                    Icons.location_on_outlined,
                    size: 18,
                  ),
                  title: Text(
                    'My address',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_sharp,
                    size: 18,
                  ),
                );
              },
              itemCount: 7,
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
    );
  }
}
