import 'package:flutter/material.dart';

import '../../../../../core/theming/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Text('home screen',style: AppTextStyles.font20CairoWhite,))
      ],
    );
  }
}
