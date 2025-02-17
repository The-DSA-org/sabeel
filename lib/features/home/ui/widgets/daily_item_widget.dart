import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class DailyItemWidget extends StatelessWidget {
  final String title;
  final String mainText;
  final Widget? subText;
  final Widget? counter;
  final bool isAyah;

  const DailyItemWidget({
    super.key,
    required this.title,
    required this.mainText,
    this.subText,
    this.counter,
    this.isAyah=false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.dimGray,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        FontAwesomeIcons.shareFromSquare,
                        color: AppColors.chineseWhite,
                        size: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.font16CairoWhite,
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(ClipboardData(text: mainText));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Center(child: Text("تم النسخ"))),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.copy, color: AppColors.chineseWhite),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.ebony,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                    Text(
                      mainText,
                      textAlign: TextAlign.center,
                      style: isAyah?AppTextStyles.font16AmiriWhite:AppTextStyles.font14CairoWhite,
                    ),
                    subText == null
                        ? SizedBox()
                        : Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              subText!
                            ],
                          )
                  ],
                ),
              ),
              counter != null ? counter! : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
