import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabeel_app/core/helpers/extension.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_time_line.dart';

import '../../../../core/di/di.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/model/adhan_query_param_request.dart';
import '../../logic/home_screen_cubit.dart';

class PrayerTimesList extends StatelessWidget {
  double latitude;
  double longitude;

  PrayerTimesList({required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()
        ..getPrayerTimes(AdhanQueryParamRequest(
            longitude: longitude,
            latitude: latitude,
            day: DateTime.now().day,
            month: DateTime.now().month,
            year: DateTime.now().year)),
      builder: (context, state) {
        return state.maybeWhen(
          prayerTimesLoading: (loadingMsg) {
            return Text(
              loadingMsg,
              style: AppTextStyles.font20CairoWhite,
              textAlign: TextAlign.center,
            );
          },
          prayerTimesSuccess: (adhanResponse) => Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      PrayerTimeLine(
                          'الإمساك', convertTo12HourFormat(adhanResponse.data!.timings!.imsak!).toArabian()),
                      PrayerTimeLine(
                          'الفجر', convertTo12HourFormat(adhanResponse.data!.timings!.fajr!).toArabian()),
                      PrayerTimeLine(
                          'الشروق', convertTo12HourFormat(adhanResponse.data!.timings!.sunrise!).toArabian()),
                      PrayerTimeLine(
                          'الظهر', convertTo12HourFormat(adhanResponse.data!.timings!.dhuhr!).toArabian()),
                      PrayerTimeLine(
                          'العصر', convertTo12HourFormat(adhanResponse.data!.timings!.asr!).toArabian()),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: AppColors.ebony,
                  thickness: 2,
                ),
                Expanded(
                  child: Column(
                    children: [
                      PrayerTimeLine(
                          'المغرب', convertTo12HourFormat(adhanResponse.data!.timings!.maghrib!).toArabian()),
                      PrayerTimeLine(
                          'العشاء', convertTo12HourFormat(adhanResponse.data!.timings!.isha!).toArabian()),
                      PrayerTimeLine('الثلث الأول',
                          convertTo12HourFormat(adhanResponse.data!.timings!.firstthird!).toArabian()),
                      PrayerTimeLine('منتصف الليل',
                          convertTo12HourFormat(adhanResponse.data!.timings!.midnight!).toArabian()),
                      PrayerTimeLine('الثلث الأخير',
                          convertTo12HourFormat(adhanResponse.data!.timings!.lastthird!).toArabian()),
                    ],
                  ),
                ),
              ],
            ),
          ),
            orElse: () => Expanded(child: Center(child: Text('يرجى الإنتظار'))));
      },
    );
  }
}
String convertTo12HourFormat(String time24) {
  // Split the input time into hours and minutes
  List<String> parts = time24.split(':');
  int hour = int.parse(parts[0]);
  String minutes = parts[1];

  // Determine AM or PM
  // String period = hour >= 12 ? 'PM' : 'AM';

  // Convert hour to 12-hour format
  if (hour > 12) {
    hour -= 12;
  } else if (hour == 0) {
    hour = 12; // Midnight case
  }

  // Return the formatted time
  return '${hour.toString().padLeft(2, '0')}:$minutes';
}

