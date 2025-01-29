import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class BookSlugContainer extends StatelessWidget {
  const BookSlugContainer({
    super.key,
    required this.bookSlugTranslations,
    required this.bookSlug,
  });

  final Map<String, String> bookSlugTranslations;
  final String bookSlug;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.ebony,
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: Text(
          bookSlugTranslations[bookSlug] ?? bookSlug,
          style: AppTextStyles.font18CairoWhite,
        ),
      ),
    );
  }
}
