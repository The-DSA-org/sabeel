import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/di.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/home_screen_cubit.dart';
import 'daily_item_widget.dart';

class DailyNameOfAllahWidget extends StatelessWidget {
  const DailyNameOfAllahWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()..loadDailyNameOfAllah(),
      builder: (context, state) {
        return state.maybeWhen(
            namesOfAllahSuccess: (namesOfAllah) => DailyItemWidget(
                  title: 'من أسماء الله الحسنى',
                  mainText: namesOfAllah.name ?? 'حدث خطأ ما.',
                  subText: Text(
                    namesOfAllah.text ?? '',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.font12CairoWhite,
                  ),
                ),
            namesOfAllahLoading: () {
              return DailyItemWidget(
                title: 'من أسماء الله الحسنى',
                mainText: 'جاري التحميل...',
              );
            },
            namesOfAllahError: (error) {
              return DailyItemWidget(
                title: 'من أسماء الله الحسنى',
                mainText: 'حدث خطأ ما.',
              );
            },
            orElse: () {
              return DailyItemWidget(
                title: 'من أسماء الله الحسنى',
                mainText: 'حدث خطأ ما.',
              );
            });
      },
    );
  }
}
