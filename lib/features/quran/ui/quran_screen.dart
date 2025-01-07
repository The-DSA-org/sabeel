import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text('Quran screen',style: AppTextStyles.font20CairoWhite,))
      ],
    );
  }
}
