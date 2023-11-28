import 'package:flutter/material.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:mide_mate/features/auth/ui/screens/login_screen.dart';
import 'package:mide_mate/features/auth/ui/screens/profile_screen.dart';
import 'package:mide_mate/features/auth/ui/screens/register_screen.dart';
import 'package:mide_mate/features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  // final arguments = RouteSetti,
  Route generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route define for ${settings.name}')),
          ),
        );
    }
  }
}
