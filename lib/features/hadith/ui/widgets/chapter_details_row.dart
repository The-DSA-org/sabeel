import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';

class ChapterDetailsRow extends StatelessWidget {
  ChapterDetailsRow({
    super.key,
    required this.hadithModel,
  });

  final HadithModel hadithModel;
  final Map<String, String> bookStatusTranslations = {
    'Sahih': 'صحيح',
    'Daif': 'ضعيف',
    'Hasan': 'حسن',
    'Mawdu': 'موضوع',
  };
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "الباب: ${hadithModel.chapter.chapterArabic}",
          style: AppTextStyles.font16CairoWhite,
        ),
        Text(
          "رقم الباب: ${hadithModel.chapter.chapterNumber}",
          style: AppTextStyles.font16CairoWhite,
        ),
        Text(
          "الحالة: ${bookStatusTranslations[hadithModel.status]}",
          style: AppTextStyles.font16CairoWhite,
        ),
      ],
    );
  }
}
