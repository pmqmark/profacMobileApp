import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Color(0xFFE8FFEE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            padding: EdgeInsets.all(14),
            shrinkWrap: true,
            children: [
              Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              VerticalSpace(100),
              Image.asset('assets/profac Logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
