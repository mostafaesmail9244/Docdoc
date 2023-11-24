import 'package:flutter/material.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/features/auth/ui/screens/login_screen.dart';
import 'package:mide_mate/features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  // final arguments = RouteSetti,
  Route generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route define for ${settings.name}')),
          ),
        );
    }
  }
}
