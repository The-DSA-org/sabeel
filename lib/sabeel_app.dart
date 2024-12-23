import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes_names.dart';

class SabeelApp extends StatelessWidget {
  final AppRouter appRouter;

  const SabeelApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Diva shopping app',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: AppColors.chineseWhite),
              scaffoldBackgroundColor: AppColors.mediumJungleGreen,),
          initialRoute: Routes.splashScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
