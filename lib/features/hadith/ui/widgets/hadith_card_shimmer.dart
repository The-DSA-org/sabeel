import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class HadithCardShimmer extends StatelessWidget {
  const HadithCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.w, horizontal: 16.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 8,
      color: AppColors.dimGray,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Shimmer.fromColors(
          baseColor: AppColors.dimGray,
          highlightColor: AppColors.mintGreen,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 12.h),
            decoration: BoxDecoration(
              color: AppColors.ebony,
              borderRadius: BorderRadius.circular(15.r),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
