import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class GreetingLine extends StatelessWidget {
  const GreetingLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'السلام عليكم،',
            style: AppTextStyles.font16CairoWhite,
          ),
          Text('أهلاً بك!', style: AppTextStyles.font16CairoWhite),
        ],
      ),
    );
  }
}
