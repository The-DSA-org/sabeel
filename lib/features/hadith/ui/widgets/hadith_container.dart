import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';

class HadithContainer extends StatelessWidget {
  const HadithContainer({
    super.key,
    required this.hadithModel,
  });

  final HadithModel hadithModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 12.h),
      decoration: BoxDecoration(
        color: AppColors.ebony,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Text(
        hadithModel.hadithArabic,
        textAlign: TextAlign.right,
        style: AppTextStyles.font18CairoWhite,
      ),
    );
  }
}
