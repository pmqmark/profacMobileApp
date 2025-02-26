import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profac/presentation/bookings/bookings_screen.dart';
import 'package:profac/presentation/mainmenu/mainmenu_screen.dart';
import 'package:profac/presentation/profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);
  final pages = [
    MainmenuScreen(),
    BookingsScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ValueListenableBuilder(
          valueListenable: currentIndexNotifier,
          builder: (context, index, _) {
            return IndexedStack(
              index: index,
              children: pages,
            );
          }),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: ValueListenableBuilder(
            valueListenable: currentIndexNotifier,
            builder: (context, index, _) {
              return BottomNavigationBar(
                elevation: 10,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: 20),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.list_bullet_below_rectangle,
                        size: 20),
                    label: 'Bookings',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 20),
                    label: 'Profile',
                  ),
                ],
                currentIndex: index,
                onTap: (value) {
                  currentIndexNotifier.value = value;
                },
              );
            }),
      ),
    );
  }
}
