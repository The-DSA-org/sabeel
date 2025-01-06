import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class HadithInfoRow extends StatelessWidget {
  const HadithInfoRow({
    super.key,
    required this.bookSlug,
    required this.status,
  });

  final String bookSlug;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "الكتاب: $bookSlug",
          textAlign: TextAlign.right,
          style: AppTextStyles.font16CairoWhite,
        ),
        Spacer(),
        Text(
          "درجة الحديث: $status",
          textAlign: TextAlign.right,
          style: AppTextStyles.font16CairoWhite,
        ),
      ],
    );
  }
}
