import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/features/home/ui/widgets/tasbeh_ring_item.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class TasbehRingWidget extends StatefulWidget {
  const TasbehRingWidget({super.key});

  @override
  State<TasbehRingWidget> createState() => _TasbehRingWidgetState();
}

class _TasbehRingWidgetState extends State<TasbehRingWidget> {
  double progress = 0;
  int currentZekr = 0;
  List<String> azkar = ['سبحان الله', 'أستغفر الله', 'الله أكبر'];
  List<bool> azkarState = [false,false,false];

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.dimGray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'حلقة التسبيح',
              style: AppTextStyles.font18CairoWhite
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'قال رسول الله ﷺ :مَثَلُ الذي يَذْكُرُ رَبَّهُ والذي لا يَذْكُرُ رَبَّهُ، مَثَلُ الحَيِّ والمَيِّتِ',
              style: AppTextStyles.font16CairoWhite,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      progress += 0.3333;
                      print(progress);
                      if (progress >= 0.9999) {
                        progress = 1.0; // Set explicitly to complete the circle
                        azkarState[currentZekr]=true;
                        Future.delayed(Duration(milliseconds: 500), () {
                          setState(() {
                            progress =
                            0.0; // Reset progress after completing the circle
                            currentZekr++; // Increment currentZekr
                            if (currentZekr == 3) {
                              currentZekr =
                              0; // Reset currentZekr after reaching 3
                              azkarState=[false,false,false];
                            }
                          });
                        });
                      }
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 150.h,
                        width: 150.w,
                        margin: EdgeInsets.symmetric(horizontal: 12.h),
                        child: TweenAnimationBuilder(
                          tween: Tween<double>(begin: 0.0, end: progress),
                          duration: Duration(milliseconds: 350),
                          // Duration of animation
                          builder: (context, value, child) {
                            return CircularProgressIndicator(
                              value: value,
                              strokeWidth: 12.0,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.darkEbony),
                              backgroundColor: AppColors.hookersGreen,
                              strokeCap: StrokeCap.round,
                            );
                          },
                        ),
                      ),
                      Text(azkar[currentZekr],
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    TasbehRingItem('سبحان الله', AppColors.hookersGreen,
                        azkarState[0]),
                    TasbehRingItem('أستغفر الله', AppColors.gunmetal,
                       azkarState[1]),
                    TasbehRingItem('الله أكبر', AppColors.charcoal,
                        azkarState[2]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
