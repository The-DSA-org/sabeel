import 'package:flutter/material.dart';
import 'package:sabeel_app/core/helpers/spacing.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/book_slug_container.dart';
import 'package:sabeel_app/features/hadith/ui/widgets/hadith_actions_row.dart';

class HadithCard extends StatelessWidget {
  final String hadithArabic;
  final String bookSlug;
  final String status;

  HadithCard({
    super.key,
    required this.hadithArabic,
    required this.bookSlug,
    required this.status,
  });
  final Map<String, String> bookSlugTranslations = {
    'sahih-bukhari': 'صحيح البخاري',
    'sahih-muslim': 'صحيح مسلم',
    'riyad-us-saliheen': 'رياض الصالحين',
  };
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      color: AppColors.dimGray,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BookSlugContainer(
                bookSlugTranslations: bookSlugTranslations, bookSlug: bookSlug),
            verticalSpace(5),
            Text(
              hadithArabic,
              textAlign: TextAlign.right,
              style: AppTextStyles.font18CairoWhite,
            ),
            verticalSpace(10),
            Divider(
              color: AppColors.chineseWhite,
              thickness: 1,
            ),
            HadithActionsRow(hadithArabic: hadithArabic),
          ],
        ),
      ),
    );
  }
}
