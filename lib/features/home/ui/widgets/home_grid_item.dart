import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class HomeGridItem extends StatelessWidget {
 String text;
 Widget widget;

 HomeGridItem(this.widget,this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          height: 65.h,
          width: 65.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.darkEbony
          ),
          child: widget,

        ),
        SizedBox(height: 5.h,),
        Center(child: Text(text,textAlign: TextAlign.center,))
      ],
    );
  }
}
