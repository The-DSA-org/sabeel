import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_item_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/greeting_line.dart';
import 'package:sabeel_app/features/home/ui/widgets/home_grid_view_section.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_times_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/tasbeh_ring_widget.dart';
import '../../../../../core/theming/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
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
                DailyItemWidget(
                    'آية اليوم',
                    Text(
                      'إِنَّ اللَّهَ وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ ۚ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14CairoWhite,
                    ),
                    Text(
                      'الأحزاب : 56',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font12CairoWhite,
                    ),
                    'إِنَّ اللَّهَ وَمَلَائِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ ۚ يَا أَيُّهَا الَّذِينَ آمَنُوا صَلُّوا عَلَيْهِ وَسَلِّمُوا تَسْلِيمًا'),
                DailyItemWidget(
                    'من أسماء الله الحسنى',
                    Text(
                      'الرَّحْمَنُ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font20CairoWhite,
                    ),
                    Text(
                      'كثير الرحمة وهو اسم مقصور على الله عز وجل ولا يجوز أن يقال رحمن لغير الله، وذلك لأن رحمته وسعت كل شيء وهو أرحم الراحمين',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14CairoWhite,
                    ),
                    'الرَّحْمَنُ:كثير الرحمة وهو اسم مقصور على الله عز وجل ولا يجوز أن يقال رحمن لغير الله، وذلك لأن رحمته وسعت كل شيء وهو أرحم الراحمين '),
                DailyItemWidget(
                    'حديث اليوم',
                    Text(
                      'المُسْلِمُ مَن سَلِمَ المُسْلِمُونَ مِن لِسانِهِ ويَدِهِ، والمُهاجِرُ مَن هَجَرَ ما نَهَى اللَّهُ عنْه',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14CairoWhite,
                    ),
                    Text(
                      ' المصدر : صحيح البخاري | الصفحة أو الرقم : 6484 ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font12CairoWhite,
                    ),
                    'المُسْلِمُ مَن سَلِمَ المُسْلِمُونَ مِن لِسانِهِ ويَدِهِ، والمُهاجِرُ مَن هَجَرَ ما نَهَى اللَّهُ عنْه'),
                DailyItemWidget(
                    'دعاء اليوم',
                    Text(
                      'لا إله إلا أنت سبحانك إني كنت من الظالمين',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font18CairoWhite,
                    ),
                    null,
                    'لا إله إلا أنت سبحانك إني كنت من الظالمين'),
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
