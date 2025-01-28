import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

Location location=Location();
void showServiceDisableDialog(BuildContext context, Function() getUserLocation) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.darkEbony,
        title: Center(child: Text(' 🔔 السماح بالوصول إلى الموقع',style: AppTextStyles.font20CairoWhite)),
        content: Text(
          'لتقديم أوقات الأذان بدقة بناءً على موقعك، نحتاج إلى إذنك للوصول إلى موقع جهازك',style: AppTextStyles.font14CairoWhite, textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('إلغاء',style: AppTextStyles.font14CairoWhite),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context); // Close the dialog
              // Request location service if disabled
              bool serviceEnabled = await location.requestService();
              if (serviceEnabled) {
                // Recheck permission after enabling service
                await getUserLocation();
              } else {
                showServiceDisableDialog(context,getUserLocation);
              }
            },
            child: Text('سماح',style: AppTextStyles.font14CairoWhite),
          ),
        ],
      );
    },
  );
}

void showPermissionDisableDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.darkEbony,
        title:  Center(child: Text('❗ رفض إذن الموقع',style: AppTextStyles.font18CairoWhite)),
        content:  Text(
          'لقد رفضت إذن الوصول إلى الموقع سابقًا. يُرجى السماح بالوصول من الإعدادات لتقديم أوقات الأذان بناءً على موقعك',style: AppTextStyles.font14CairoWhite,
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('إلغاء',style: AppTextStyles.font14CairoWhite),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            child: Text('فتح الإعدادات',style: AppTextStyles.font14CairoWhite),
          ),
        ],
      );
    },
  );
}