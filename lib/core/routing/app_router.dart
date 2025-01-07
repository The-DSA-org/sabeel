import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/core/di/di.dart';
import 'package:sabeel_app/core/routing/routes_names.dart';
import 'package:sabeel_app/features/azkar/ui/screens/zikr_screen.dart';
import 'package:sabeel_app/features/home_layout/logic/home_layout_cubit.dart';
import 'package:sabeel_app/features/home_layout/ui/home_layout.dart';
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
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<HomeLayoutCubit>(),
                child: HomeLayout(),
              ),
        );
      case Routes.zikrScreen:
        return MaterialPageRoute(
          builder: (_) => const ZikrScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
