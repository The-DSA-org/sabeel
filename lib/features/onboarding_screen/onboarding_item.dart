import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theming/app_text_styles.dart';
import 'onboarding_model.dart';


Widget onBoardingItem(OnBoardingModel model, context) => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    SizedBox(
        height: 400.h,
        child: Image.asset(
          model.image,
          fit: BoxFit.contain,
        )),
    Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            model.text,
            style: AppTextStyles.font24AmiriWhite,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ],
);
