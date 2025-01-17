import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/hadith_layout/ui/hadith_tab.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الأحاديث النبوية',
          style: AppTextStyles.font22CairoWhite,
        ),
        centerTitle: true,
      ),
      body: HadithTab(),
    );
  }
}
