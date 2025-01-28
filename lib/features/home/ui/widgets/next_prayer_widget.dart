import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/helpers/extension.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';

import '../../../../core/di/di.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../data/model/adhan_query_param_request.dart';
import '../../logic/home_screen_cubit.dart';

class NextPrayerWidget extends StatefulWidget {
  final double longitude;
  final double latitude;

  NextPrayerWidget({required this.longitude, required this.latitude});

  @override
  _NextPrayerWidgetState createState() => _NextPrayerWidgetState();
}

class _NextPrayerWidgetState extends State<NextPrayerWidget> {
  DateTime? _nextPrayerTime;
  late Timer _progressTimer;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      bloc: getIt<HomeScreenCubit>()
        ..getNextPrayer(
          AdhanQueryParamRequest(
            latitude: widget.latitude,
            longitude: widget.longitude,
            day: DateTime.now().day,
            month: DateTime.now().month,
            year: DateTime.now().year,
          ),
        ),
      builder: (context, state) {
        return state.maybeWhen(
          nextPrayerLoading: (loadingMsg) {
            return Column(
              children: [
                Text(
                  loadingMsg,
                  style: AppTextStyles.font14CairoWhite,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25.h),
              ],
            );
          },
          nextPrayerSuccess: (nextPrayer) {
            if (_nextPrayerTime == null) {
              String nextPrayerTime = nextPrayer.data!.timings!
                  .toJson()
                  .entries
                  .where((entry) => entry.value != null).first.value;
              print(nextPrayerTime);
              List<String> timeParts = nextPrayerTime.split(':');
              DateTime now = DateTime.now();
              _nextPrayerTime = DateTime(
                now.year,
                now.month,
                now.day,
                int.parse(timeParts[0]),
                int.parse(timeParts[1]),
              );

              // If the prayer time is earlier than now, consider the next day
              if (_nextPrayerTime!.isBefore(now)) {
                _nextPrayerTime = _nextPrayerTime!.add(Duration(days: 1));
              }

              _progressTimer = Timer.periodic(Duration(seconds: 1), (timer) {
                DateTime currentTime = DateTime.now();
                Duration remainingTime =
                    _nextPrayerTime!.difference(currentTime);

                if (remainingTime.isNegative) {
                  remainingTime = Duration.zero; // Reset to zero if time is up
                  timer.cancel();
                }
              });
            }

            return Card(
              margin: EdgeInsets.zero,
              color: AppColors.ebony,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                child: Column(
                  children: nextPrayer.data!.timings!
                      .toJson()
                      .entries
                      .where((entry) => entry.value != null)
                      .map((entry) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              entry.key.toArabicPrayerName(),
                              style: AppTextStyles.font20CairoWhite.copyWith(fontWeight: FontWeight.bold),
                            ),

                            Spacer(),
                            Text(
                              entry.value.toString().toArabian(),
                              style: AppTextStyles.font20CairoWhite.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            Text(
                              ' الوقت المتبقي:',
                              style: AppTextStyles.font12CairoWhite,
                            ),
                            Spacer(),
                            CountdownTimer(targetTime: _nextPrayerTime!),

                          ],
                        )
                      ],
                    );
                  }).toList(),
                ),
              ),
            );
          },
          orElse: () => Center(child: Text('يرجى الإنتظار')),
        );
      },
    );
  }

  @override
  void dispose() {
    _progressTimer.cancel();
    super.dispose();
  }
}

class CountdownTimer extends StatefulWidget {
  final DateTime targetTime;

  const CountdownTimer({required this.targetTime, Key? key}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  late ValueNotifier<Duration> _remainingTimeNotifier;

  @override
  void initState() {
    super.initState();
    _remainingTimeNotifier =
        ValueNotifier(widget.targetTime.difference(DateTime.now()));
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _remainingTimeNotifier.value =
          widget.targetTime.difference(DateTime.now());
      if (_remainingTimeNotifier.value.isNegative) {
        _remainingTimeNotifier.value =
            Duration.zero; // Reset to zero if time is up
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Duration>(
      valueListenable: _remainingTimeNotifier,
      builder: (context, remainingTime, child) {
        return Text(
          '${remainingTime.inHours.toString().toArabian()}:${(remainingTime.inMinutes % 60).toString().toArabian().padLeft(2, '٠')}:${(remainingTime.inSeconds % 60).toString().toArabian().padLeft(2, '٠')}',
          style: AppTextStyles.font12CairoWhite,
        );
      },
    );
  }
}
