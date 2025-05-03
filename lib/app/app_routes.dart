import 'package:ecom_app/features/auth/ui/screens/sing-in_screen.dart';
import 'package:ecom_app/features/auth/ui/screens/sing_up_screen.dart';
import 'package:ecom_app/features/auth/ui/screens/splash_screen.dart';
import 'package:ecom_app/features/auth/ui/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    late Widget route;
    if (settings.name == SplashScreen.name) {
      route = const SplashScreen();
    } else if (settings.name == SingInScreen.name) {
      route = const SingInScreen();
    } else if (settings.name == SingUpScreen.name) {
      route = const SingUpScreen();
    }else if (settings.name == VerifyOtpScreen.name) {
      route = const VerifyOtpScreen();
    }

    return MaterialPageRoute(
        builder: (context) {
          return route;
        },
      );
    }
}