import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/helpers/spacing.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/hadith_container.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/hadith_details_and_actions.dart';

class HadithCard extends StatelessWidget {
  final HadithModel hadithModel;

  HadithCard({
    super.key,
    required this.hadithModel,
  });
  final Map<String, String> bookSlugTranslations = {
    'sahih-bukhari': 'صحيح البخاري',
    'sahih-muslim': 'صحيح مسلم',
    'riyad-us-saliheen': 'رياض الصالحين',
    'bulugh-al-maram': 'بلوغ المرام',
  };

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.w, horizontal: 16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 8,
      color: AppColors.dimGray,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "كتاب ${bookSlugTranslations[hadithModel.bookSlug]}",
              style: AppTextStyles.font18CairoWhite,
              textAlign: TextAlign.center,
            ),
            verticalSpace(8),
            HadithContainer(
              hadithModel: hadithModel,
            ),
            HadithDetailsAndActions(
              hadithModel: hadithModel,
            ),
          ],
        ),
      ),
    );
  }
}
