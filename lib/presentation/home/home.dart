import 'package:flutter/material.dart';
import 'package:profac/presentation/mainmenu/mainmenu_screen.dart';
import 'package:profac/presentation/profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);
  final pages = [
    MainmenuScreen(),
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
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
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
