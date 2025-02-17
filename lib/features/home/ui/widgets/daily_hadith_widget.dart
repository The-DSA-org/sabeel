import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/di.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/home_screen_cubit.dart';
import 'daily_item_widget.dart';
class DailyHadithWidget extends StatelessWidget {
  const DailyHadithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return                 BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()..loadDailyHadith(),
      builder: (context, state) {
        return state.maybeWhen(
          hadithSuccess: (dailyHadith) {
            return DailyItemWidget(
              title: 'حديث اليوم',
              mainText: dailyHadith.hadith ?? 'حدث خطأ ما.',
              subText:
              BlocBuilder<HomeScreenCubit, HomeScreenState>(
                builder: (context, state) {
                  bool isHadithDescriptionShown = context
                      .read<HomeScreenCubit>()
                      .isHadithDescriptionShown;
                  return Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'مصدر الحديث: ${dailyHadith.source}',
                            style: AppTextStyles.font12CairoWhite,
                          ),
                          Spacer(),
                          Text(
                            'رقم الحديث: ${dailyHadith.hadithNumber}',
                            style: AppTextStyles.font12CairoWhite,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(12.r),
                        elevation: 3,
                        color: AppColors.resedaGreen,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12.r),
                          onTap: () {
                            // Toggle the description visibility in the Cubit
                            context
                                .read<HomeScreenCubit>()
                                .toggleHadithDescription();
                            print(context
                                .read<HomeScreenCubit>()
                                .isHadithDescriptionShown);
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.r),
                            child: Text(context
                                .read<HomeScreenCubit>()
                                .isHadithDescriptionShown
                                ? 'إخفاء شرح الحديث'
                                : 'إظهار شرح الحديث'),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isHadithDescriptionShown,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(dailyHadith.description ??
                                'لا توجد تفاصيل.'),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
          hadithLoading: () {
            return DailyItemWidget(
              title: 'حديث اليوم',
              mainText: 'جاري التحميل...',
            );
          },
          hadithError: (error) {
            return DailyItemWidget(
              title: 'حديث اليوم',
              mainText: 'حدث خطأ ما.',
            );
          },
          orElse: () {
            return DailyItemWidget(
              title: 'حديث اليوم',
              mainText: 'حدث خطأ ما.',
            );
          },
        );
      },
    );

  }
}
