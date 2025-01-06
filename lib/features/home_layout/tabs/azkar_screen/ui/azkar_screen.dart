import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_styles.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text('Azkar screen',style: AppTextStyles.font20CairoWhite,))
      ],
    );
  }
}
