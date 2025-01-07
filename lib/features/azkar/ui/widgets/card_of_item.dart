import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/routing/routes_names.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class CardOfItem extends StatelessWidget{
  final int index;
  const CardOfItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.zikrScreen);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.resedaGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              'اذكار الصباح',
              style: AppTextStyles.font20CairoWhite,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
// return Padding(
//   padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
//   child: Container(
//     decoration: BoxDecoration(
//       color: AppColors.resedaGreen,
//       borderRadius: BorderRadius.circular(20.0),
//     ),
//     child: Column(
//       children: [
//         Expanded(child: Image.asset(imagesOfAzkar[index])),
//         Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(20.r),
//               bottomLeft: Radius.circular(20.r),
//             ),
//           ),
//             child: Text(
//               'اذكار الصباح',
//               style: AppTextStyles.font20CairoWhite.copyWith(
//                 color: Colors.black
//               ),
//               textAlign: TextAlign.center,
//             ),
//         ),
//       ],
//     ),
//   ),
// );