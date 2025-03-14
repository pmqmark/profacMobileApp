import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/splash_screen/splash_screen_bloc.dart';
import 'package:profac/infrastructure/fcm/fcm_repo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SplashScreenBloc>(context)
          .add(const SplashScreenEvent.checkIfAuthenticated());
      
    });
    return Scaffold(
      body: BlocConsumer<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: () {
              Navigator.of(context).pushReplacementNamed('/find_location');
              FCMRepo().updateFCMToken();
            },
            unauthenticated: () {
              Navigator.of(context).pushReplacementNamed('/login');
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Center(
            child: Image.asset(
              'assets/profac_logo.png',
              width: 150,
              fit: BoxFit.contain,
            ),
          );
        },
      ),
    );
  }
}
