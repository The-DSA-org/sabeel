import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';

class CardOfItem extends StatelessWidget{
  const CardOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gunmetal,
      child: Column(
        children: [
          Image.asset('assets/images/rb_2149275537.png'),
          Text('اذكار الصباح'),
        ],
      ),
    );
  }

}
