import 'package:flutter/material.dart';
import 'package:sabeel_app/core/helpers/spacing.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith_layout/ui/widgets/hadith_actions_row.dart';
import 'package:sabeel_app/features/hadith_layout/ui/widgets/hadith_info_row.dart';
import 'package:sabeel_app/features/hadith_layout/ui/widgets/hadith_logo.dart';

class HadithCard extends StatelessWidget {
  final String hadithArabic;
  final String bookSlug;
  final String status;

  const HadithCard({
    super.key,
    required this.hadithArabic,
    required this.bookSlug,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      color: AppColors.resedaGreen,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            HadithLogo(),
            verticalSpace(5),
            Text(
              hadithArabic,
              textAlign: TextAlign.center,
              style: AppTextStyles.font18CairoWhite,
            ),
            verticalSpace(10),
            HadithInfoRow(bookSlug: bookSlug, status: status),
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
