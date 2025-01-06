import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_styles.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text('Prayer times screen',style: AppTextStyles.font20CairoWhite,))
      ],
    );
  }
}
