import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.ebony,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.cairo(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.chineseWhite,
    ),
    bodyMedium: GoogleFonts.cairo(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: AppColors.chineseWhite,
      height: 1.2,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.ebony,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    unselectedItemColor: AppColors.mintGreen,
     elevation: 20.0,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColors.ebony,
    titleSpacing: 20.0,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.cairo(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.chineseWhite,
    ),
    toolbarTextStyle: GoogleFonts.cairo(
      fontSize: 18.0,
      color: AppColors.chineseWhite,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.chineseWhite,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      // statusBarColor: Color(0xFF333739),
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.ebony),

);