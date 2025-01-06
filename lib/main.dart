import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/di/di.dart';
import 'package:sabeel_app/sabeel_app.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  Bloc.observer = MyBlocObserver();
  runApp(SabeelApp(appRouter: AppRouter()));
}
