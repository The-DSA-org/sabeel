import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_time_line.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class PrayerTimesWidget extends StatelessWidget {
  const PrayerTimesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        height: 200.h,
        padding:
        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.dimGray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '7 رمضان 1446',
                  style: AppTextStyles.font12CairoWhite,
                ),
                Spacer(),
                Text('مدينة نصر، القاهرة',
                    style: AppTextStyles.font12CairoWhite),
                SizedBox(
                  width: 3.w,
                ),
                Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.white,
                  size: 20.r,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(16.r),
                    minHeight: 40.h,
                    value: 0.8,
                    color: AppColors.ebony,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.w, vertical: 5.h),
                    child: Row(
                      children: [
                        Text(
                          'الظهر',
                          style: AppTextStyles.font18CairoWhite,
                        ),
                        Text(
                          '\n   تبقى على الأذان',
                          style: AppTextStyles.font8CairoWhite,
                        ),
                        Spacer(),
                        Text(
                          '1:17',
                          style: AppTextStyles.font18CairoWhite
                              .copyWith(color: AppColors.resedaGreen),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: AppColors.ebony,
                    thickness: 2,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
