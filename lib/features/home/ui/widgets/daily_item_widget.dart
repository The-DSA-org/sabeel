import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class DailyItemWidget extends StatelessWidget {
  String title;
  Text mainText;
  Text? subText;
  String copiedText;

  DailyItemWidget(this.title, this.mainText, this.subText,this.copiedText);

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
                      style: AppTextStyles.font16CairoWhite,
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(ClipboardData(text: copiedText));
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
                decoration: BoxDecoration(
                  color: AppColors.ebony,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  children: [
                   mainText,
                    SizedBox(
                      height: 10.h,
                    ),
                    subText==null?SizedBox():subText!
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
