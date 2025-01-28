import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/app_images/app_images.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/data/azkar_model.dart';
import 'package:sabeel_app/features/azkar/ui/screens/zikr_details_screen.dart';

class CardOfAzkar extends StatelessWidget {
  final int index;
  final List<AzkarModel> azkar;

  const CardOfAzkar({super.key, required this.index, required this.azkar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ZikrScreen(azkar: azkar, indexOfAzkar: index,)));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.resedaGreen,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120.h,
                child: Image.asset(
                  imagesOfAzkar[index],
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w,),
                      child: Text(
                        azkar[index].category,
                        style: AppTextStyles.font16CairoBlack.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
