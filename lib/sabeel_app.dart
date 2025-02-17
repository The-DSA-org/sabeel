import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_themes.dart';
import 'package:sabeel_app/l10n/l10n.dart';
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
          supportedLocales: L10n.all,
          locale: const Locale('ar'),
          localizationsDelegates: [
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          theme: darkTheme,
          initialRoute: Routes.homeLayout,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
