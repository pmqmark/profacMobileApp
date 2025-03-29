import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/banner/banner_bloc.dart';
import 'package:profac/application/booking/add_review/add_review_bloc.dart';
import 'package:profac/application/booking/bookings/bookings_bloc.dart';
import 'package:profac/application/booking/detailed_booking/detailed_booking_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';

import 'package:profac/application/categories_group/catrogies_group_bloc.dart';
import 'package:profac/application/category_detailed/category_detailed_bloc.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/application/checkout/booking_available/booking_available_bloc.dart';
import 'package:profac/application/checkout/booking_slots/booking_slots_bloc.dart';
import 'package:profac/application/checkout/checkout_order/checkout_order_bloc.dart';
import 'package:profac/application/checkout/coupons/coupons_bloc.dart';
import 'package:profac/application/detailed_service/detailed_service_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/application/search_screen/search_services_bloc.dart';
import 'package:profac/application/service_available/service_available_bloc.dart';
import 'package:profac/application/settings/delete_profile/delete_profile_bloc.dart';
import 'package:profac/application/settings/download_data/download_data_bloc.dart';
import 'package:profac/application/settings/help_and_support/help_and_support_bloc.dart';
import 'package:profac/application/splash_screen/splash_screen_bloc.dart';
import 'package:profac/application/sub_service_reviews/sub_service_reviews_bloc.dart';
import 'package:profac/application/verification/verification_bloc.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/presentation/address/manage_address_screen.dart';
import 'package:profac/presentation/address/search_location.dart';
import 'package:profac/presentation/address/select_loction.dart';
import 'package:profac/presentation/authentication/login_screen/login_screen.dart';
import 'package:profac/presentation/bookings/bookings_screen.dart';
import 'package:profac/presentation/cart/cart_screen.dart';
import 'package:profac/presentation/home/find_location_screen.dart';
import 'package:profac/presentation/home/home.dart';
import 'package:profac/presentation/mainmenu/mainmenu_screen.dart';
import 'package:profac/presentation/profile/widgets/edit_profile_screen.dart';
import 'package:profac/presentation/search_service/search_service_screen.dart';
import 'package:profac/presentation/settings/about_us/about_us_screen.dart';
import 'package:profac/presentation/settings/delete_account/delete_account_screen.dart';
import 'package:profac/presentation/settings/delete_account/delete_account_success.dart';
import 'package:profac/presentation/settings/download_data_screen.dart';
import 'package:profac/presentation/settings/help/help_and_support_screen.dart';
import 'package:profac/presentation/settings/privacy_and_data_screen.dart';
import 'package:profac/presentation/settings/settings_screen.dart';
import 'package:profac/presentation/splash_screen/splash_screen.dart';
import 'package:profac/presentation/theme/theme_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjuction();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
            BlocProvider(create: (_) => getIt<SplashScreenBloc>()),
            BlocProvider(create: (_) => getIt<SearchLocationBloc>()),
            BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
            BlocProvider(create: (_) => getIt<ProfileBloc>()),
            BlocProvider(create: (_) => getIt<CategoriesGroupBloc>()),
            BlocProvider(create: (_) => getIt<AddressBloc>()),
            BlocProvider(create: (_) => getIt<CategoryDetailedBloc>()),
            BlocProvider(create: (_) => getIt<SearchServicesBloc>()),
            BlocProvider(create: (_) => getIt<CartItemsBloc>()),
            BlocProvider(create: (_) => getIt<DetailedServiceBloc>()),
            BlocProvider(create: (_) => getIt<SubServiceReviewsBloc>()),
            BlocProvider(create: (_) => getIt<BannerBloc>()),
            BlocProvider(create: (_) => getIt<ServiceAvailableBloc>()),
            BlocProvider(create: (_) => getIt<CouponsBloc>()),
            BlocProvider(create: (_) => getIt<BookingAmountBloc>()),
            BlocProvider(create: (_) => getIt<BookingSlotsBloc>()),
            BlocProvider(create: (_) => getIt<BookingAvailableBloc>()),
            BlocProvider(create: (_) => getIt<CheckoutOrderBloc>()),
            BlocProvider(create: (_) => getIt<VerificationBloc>()),
            BlocProvider(create: (_) => getIt<BookingsBloc>()),
            BlocProvider(create: (_) => getIt<DeleteProfileBloc>()),
            BlocProvider(create: (_) => getIt<DownloadDataBloc>()),
            BlocProvider(create: (_) => getIt<HelpAndSupportBloc>()),
            BlocProvider(create: (_) => getIt<DetailedBookingBloc>()),
            BlocProvider(create: (_) => getIt<AddReviewBloc>()),
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
              '/search_location': (context) => SearchLocationBottomSheet(),
              '/select_location': (context) => SelectLoction(),
              '/find_location': (context) => FindLocationScreen(),
              '/search_service': (context) => SearchServiceScreen(),
              '/manage_address': (context) => ManageAddressScreen(),
              '/settings': (context) => SettingsScreen(),
              '/privacy_and_data': (context) => PrivacyAndDataScreen(),
              '/download_data': (context) => DownloadDataScreen(),
              '/delete_account': (context) => DeleteAccountScreen(),
              '/delete_account_success': (context) => DeleteAccountSuccess(),
              '/edit_profile_screen' : (context) => EditProfileScreen(),
              '/bookings': (context) => BookingsScreen(),
              '/help_support': (context) => HelpAndSupportScreen(),
              '/about_us': (context) => AboutUsScreen(),
              '/cart': (context) => CartScreen(),
            },
          ),
        );
      },
    );
  }
}
