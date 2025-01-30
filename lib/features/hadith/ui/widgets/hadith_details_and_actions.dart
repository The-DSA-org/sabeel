import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/chapter_details_row.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/hadith_actions_row.dart';

class HadithDetailsAndActions extends StatelessWidget {
  const HadithDetailsAndActions({
    super.key,
    required this.hadithModel,
  });

  final HadithModel hadithModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6.h, left: 5.w, right: 5.w),
      child: Column(
        children: [
          HadithActionsRow(
            hadithModel: hadithModel,
          ),
          Divider(
            color: AppColors.chineseWhite,
            thickness: 1,
          ),
          ChapterDetailsRow(
            hadithModel: hadithModel,
          ),
        ],
      ),
    );
  }
}
