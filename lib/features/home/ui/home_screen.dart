import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_ayah_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_duaa_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_hadith_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_name_of_allah_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/greeting_line.dart';
import 'package:sabeel_app/features/home/ui/widgets/home_grid_view_section.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_times_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/tasbeh_ring_widget.dart';
import '../../../../../core/theming/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'الصفحة الرئيسية',
            style: AppTextStyles.font20CairoWhite,
            textAlign: TextAlign.right,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GreetingLine(),
                SizedBox(
                  height: 10.h,
                ),
                PrayerTimesWidget(),
                SizedBox(
                  height: 20.h,
                ),
                HomeGridViewSection(),
                TasbehRingWidget(),
                SizedBox(
                  height: 10.h,
                ),
                DailyAyahWidget(),
                DailyNameOfAllahWidget(),
                DailyDuaaWidget(),
                DailyHadithWidget(),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
