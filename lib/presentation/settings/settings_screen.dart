import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Settings'),
        backgroundColor: Color(0xFFE8FFEE),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/privacy_and_data');
            },
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                child: Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      size: 17,
                      color: Colors.black54,
                    ),
                    HorizontalSpace(10),
                    Text(
                      'Privacy & Data',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
