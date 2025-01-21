import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/data/azkar_model.dart';
import 'package:sabeel_app/features/azkar/ui/screens/zikr_details_screen.dart';

class CardOfDua extends StatelessWidget{
  final int index;
  final List<AzkarModel> azkar;
  const CardOfDua({super.key, required this.index, required this.azkar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ZikrScreen(azkar: azkar, indexOfAzkar: index,)));      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.resedaGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                azkar[index].category,
                style: AppTextStyles.font20CairoWhite,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
