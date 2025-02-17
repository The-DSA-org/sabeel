import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/di.dart';
import '../../logic/home_screen_cubit.dart';
import 'daily_item_widget.dart';

class DailyDuaaWidget extends StatelessWidget {
  const DailyDuaaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()..loadDailyDuaa(),
      builder: (context, state) {
        return state.maybeWhen(duaaSuccess: (duaa) {
          return DailyItemWidget(
            title: 'دعاء اليوم',
            mainText: duaa,
          );
        }, duaaError: (error) {
          return Center(
            child: Text('حدث خطأ ما'),
          );
        }, duaaLoading: () {
          return DailyItemWidget(
            title: 'دعاء اليوم',
            mainText: 'جاري التحميل...',
          );
        }, orElse: () {
          return DailyItemWidget(
            title: 'دعاء اليوم',
            mainText: 'حدث خطأ ما',
          );
        });
      },
    );
  }
}
