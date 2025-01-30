import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabeel_app/core/helpers/spacing.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';

class HadithActionsRow extends StatelessWidget {
  const HadithActionsRow({
    super.key,
    required this.hadithModel,
  });

  final HadithModel hadithModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Text(
                "مشاركة",
                textAlign: TextAlign.right,
                style: AppTextStyles.font16CairoWhite,
              ),
              horizontalSpace(1),
              const Icon(
                Icons.share,
                color: AppColors.chineseWhite,
                size: 20,
              ),
            ],
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: hadithModel.hadithArabic));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم نسخ الحديث!")),
            );
          },
          child: Row(
            children: [
              Text(
                "نسخ",
                textAlign: TextAlign.right,
                style: AppTextStyles.font16CairoWhite,
              ),
              horizontalSpace(1),
              const Icon(Icons.copy, color: AppColors.chineseWhite),
            ],
          ),
        ),
      ],
    );
  }
}
