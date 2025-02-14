import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/application/splash_screen/splash_screen_bloc.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/jwt_tokens/jwt_tokens.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/address/select_loction.dart';
import 'package:profac/presentation/authentication/login_screen/login_screen.dart';
import 'package:profac/presentation/common_widgets/failure_screen.dart';
import 'package:profac/presentation/home/home.dart';
import 'package:profac/presentation/mainmenu/mainmenu_screen.dart';
import 'package:profac/presentation/mainmenu/widgets/story_carousel.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';
import 'package:profac/presentation/service/services_list_screen.dart';
import 'package:profac/presentation/splash_screen/splash_screen.dart';
import 'package:profac/presentation/theme/theme_data.dart';
import 'package:provider/provider.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjuction();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            Provider(create: (_) => getIt<Request>()),
            Provider(create: (_) => getIt<JwtTokens>()),
            BlocProvider(create: (_) => getIt<SearchLocationBloc>()),
            BlocProvider(create: (_) => getIt<SplashScreenBloc>()),
          ],
          child: MaterialApp(
            title: 'Profac',
            theme: themeData,
            home: SplashScreen(),
            supportedLocales: [
              const Locale('en', 'US'),
            ],
            localizationsDelegates: [
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
            ],
            routes: {
              '/home': (context) => HomeScreen(),
              '/login': (context) => LoginScreen(),
              '/mainmenu': (context) => MainmenuScreen(),
              '/services': (context) => ServicesListScreen(),
              '/order_summary': (context) => OrderSummaryScreen(),
              '/time_slot_choosing': (context) => TimeSlotChoosingSheet(),
              '/search_location': (context) => SearchLocationBottomSheet(),
              '/select_location': (context) => SelectLoction(),
            },
          ),
        );
      },
    );
  }
}
