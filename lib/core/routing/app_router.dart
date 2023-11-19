import 'package:flutter/material.dart';
import 'package:mide_mate/core/routing/routes.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route define for ${settings.name}')),
          ),
        );
    }
  }
}
