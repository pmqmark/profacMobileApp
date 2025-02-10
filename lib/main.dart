import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/home/home.dart';
import 'package:profac/presentation/mainmenu/widgets/story_carousel.dart';
import 'package:profac/presentation/map.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';
import 'package:profac/presentation/service/services_list_screen.dart';
import 'package:profac/presentation/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          title: 'Profac',
          theme: themeData,
          home: HomeScreen(),
          supportedLocales: [
            const Locale('en', 'US'),
          ],
          localizationsDelegates: [
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
          ],
        );
      },
    );
  }
}
