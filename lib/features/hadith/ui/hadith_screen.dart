import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_styles.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text('hadith screen',style: AppTextStyles.font20CairoWhite,))
      ],
    );
  }
}
