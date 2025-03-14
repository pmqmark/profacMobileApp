import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/mainmenu/widgets/mainmenu_appbar.dart';
import 'package:profac/presentation/mainmenu/widgets/mainmenu_body.dart';

class MainmenuScreen extends StatelessWidget {
  const MainmenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        return false;
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80.h,
            floating: true,
            pinned: false,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              expandedTitleScale: 1,
              title: MainmenuAppbar(),
              background: Container(
                color: Colors.white,
              ),
            ),
          ),
          MainmenuBody(),
        ],
      ),
    );
  }
}
