import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/app_images/app_images.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';

class HadithLogo extends StatelessWidget {
  const HadithLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45.r,
      backgroundColor: AppColors.chineseWhite,
      child: Image.asset(
        AppImages.hadithLogo,
        alignment: Alignment.center,
        height: 55.h,
      ),
    );
  }
}
