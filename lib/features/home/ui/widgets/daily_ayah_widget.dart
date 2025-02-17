import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/helpers/extension.dart';

import '../../../../core/di/di.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/home_screen_cubit.dart';
import 'daily_item_widget.dart';

class DailyAyahWidget extends StatelessWidget {
  const DailyAyahWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return                 BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()..getDailyAyah(),
      builder: (context, state) {
        return state.maybeWhen(
            dailyAyahSuccess: (dailyAyah, tafseer) =>
                DailyItemWidget(
                    isAyah: true,
                    title: 'آية اليوم',
                    mainText: dailyAyah.data.text,
                    subText: BlocBuilder<HomeScreenCubit,
                        HomeScreenState>(builder: (context, state) {
                      bool isAyahTafsirShown = context
                          .read<HomeScreenCubit>()
                          .isAyahTafsirShown;
                      return Column(
                        children: [
                          Text(
                            '${dailyAyah.data.surah.name}: ${dailyAyah.data.numberInSurah.toString().toArabian()}',
                            style: AppTextStyles.font14AmiriWhite,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Material(
                            borderRadius:
                            BorderRadius.circular(12.r),
                            elevation: 3,
                            color: AppColors.resedaGreen,
                            child: InkWell(
                              borderRadius:
                              BorderRadius.circular(12.r),
                              onTap: () {
                                // Toggle the description visibility in the Cubit
                                context
                                    .read<HomeScreenCubit>()
                                    .toggleAyahTafsir();
                                print(context
                                    .read<HomeScreenCubit>()
                                    .isAyahTafsirShown);
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.r),
                                child: Text(context
                                    .read<HomeScreenCubit>()
                                    .isAyahTafsirShown
                                    ? 'إخفاء تفسير الآية'
                                    : 'إظهار تفسير الآية'),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: isAyahTafsirShown,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(tafseer?.text ??
                                    'حدث خطأ أثناء تحميل التفسير'),
                                SizedBox(height: 5.h,),
                                Text(
                                  'المصدر: ${tafseer?.tafseerName}',
                                  style: AppTextStyles
                                      .font14CairoWhite,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    })),
            dailyAyahLoading: (loadingMsg) {
              return DailyItemWidget(
                title: 'آية اليوم',
                mainText: loadingMsg,
              );
            },
            dailyAyahError: (error) {
              return DailyItemWidget(
                title: 'آية اليوم',
                mainText: 'حدث خطأ ما.',
              );
            },
            orElse: () {
              return DailyItemWidget(
                title: 'آية اليوم',
                mainText: 'حدث خطأ ما.',
              );
            });
      },
    );
  }
}
