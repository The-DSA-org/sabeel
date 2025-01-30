import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/helpers/spacing.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class HadithCardShimmer extends StatelessWidget {
  const HadithCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      color: AppColors.dimGray,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Shimmer.fromColors(
              baseColor: AppColors.dimGray,
              highlightColor: AppColors.mintGreen,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: AppColors.ebony,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 120.w,
                height: 20.h,
              ),
            ),
            verticalSpace(5),
            Shimmer.fromColors(
              baseColor: AppColors.dimGray,
              highlightColor: AppColors.mintGreen,
              child: Container(
                height: 20.h,
                width: double.infinity,
                color: Colors.white,
              ),
            ),
            verticalSpace(10),
            Shimmer.fromColors(
              baseColor: AppColors.dimGray,
              highlightColor: AppColors.mintGreen,
              child: Row(
                children: [
                  Container(
                    height: 20.h,
                    width: 120.w,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Container(
                    height: 20.h,
                    width: 120.w,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
