import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class TasbehRingItem extends StatelessWidget {
  String text;
  Color color;
  bool isFinished;
  TasbehRingItem(this.text,this.color,this.isFinished);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.all(8.r),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
          color: isFinished?AppColors.darkEbony:color,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.darkEbony,width: 2)
      ),
      child: Center(child: Text(text,style: AppTextStyles.font14CairoWhite)),
    );
  }
}
