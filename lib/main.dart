import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/categories/categories_bloc.dart';
import 'package:profac/application/categories_group/catrogies_group_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/application/splash_screen/splash_screen_bloc.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/address/select_loction.dart';
import 'package:profac/presentation/authentication/login_screen/login_screen.dart';
import 'package:profac/presentation/bookings/bookings_screen.dart';
import 'package:profac/presentation/home/find_location_screen.dart';
import 'package:profac/presentation/home/home.dart';
import 'package:profac/presentation/mainmenu/mainmenu_screen.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';
import 'package:profac/presentation/order/widgets/time_slot_choosing_sheet.dart';
import 'package:profac/presentation/service/services_list_screen.dart';
import 'package:profac/presentation/splash_screen/splash_screen.dart';
import 'package:profac/presentation/theme/theme_data.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjuction();
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<SearchLocationBloc>()),
            BlocProvider(create: (_) => getIt<SplashScreenBloc>()),
            BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
            BlocProvider(create: (_) => getIt<ProfileBloc>()),
            BlocProvider(create: (_) => getIt<CategoriesGroupBloc>()),
            BlocProvider(create: (_) => getIt<CategoriesBloc>()),
            BlocProvider(create: (_) => getIt<AddressBloc>()),
          ],
          child: MaterialApp(
            title: 'Profac',
            theme: themeData,
            navigatorKey: navigatorKey,
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
              '/find_location': (context) => FindLocationScreen(),
            },
          ),
        );
      },
    );
  }
}
