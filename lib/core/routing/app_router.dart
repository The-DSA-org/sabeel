import 'package:flutter/material.dart';
import 'package:sabeel_app/core/routing/routes_names.dart';
import 'package:sabeel_app/features/azkar/ui/screens/azkar_and_dua_screen.dart';
import 'package:sabeel_app/features/home_screen/ui/home_screen.dart';
import '../../features/onboarding_screen/onboarding_screen.dart';
import '../../features/splash_screen/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.azkarScreen:
        return MaterialPageRoute(
          builder: (_) => const AzkarAndDuaScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
