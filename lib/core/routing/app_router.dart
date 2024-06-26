import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mide_mate/core/d_i/injection.dart';
import 'package:mide_mate/core/routing/routes.dart';
import 'package:mide_mate/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:mide_mate/features/sign_up/ui/screens/forgot_password_screen.dart';
import 'package:mide_mate/features/login/logic/cubit/login_cubit.dart';
import 'package:mide_mate/features/login/ui/screens/login_screen.dart';
import 'package:mide_mate/features/sign_up/ui/screens/profile_screen.dart';
import 'package:mide_mate/features/sign_up/ui/screens/register_screen.dart';
import 'package:mide_mate/features/home/ui/screens/recommendation_doctor_screen.dart';
import 'package:mide_mate/features/layout/ui/screens/home_screen.dart';
import 'package:mide_mate/features/layout/ui/screens/layout_screen.dart';
import 'package:mide_mate/features/layout/ui/screens/notification_screen.dart';
import 'package:mide_mate/features/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route generatRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const RegisterScreen(),
                ));
      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case Routes.profileScreen:
      // return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.layoutScreen:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case Routes.recommendationScreen:
        return MaterialPageRoute(
            builder: (_) => const RecommendationDoctorScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route define for ${settings.name}')),
          ),
        );
    }
  }
}
