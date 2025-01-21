import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_time_line.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import 'package:location/location.dart' as loc;
import '../../data/location_service.dart';

class PrayerTimesWidget extends StatefulWidget {
  @override
  State<PrayerTimesWidget> createState() => _PrayerTimesWidgetState();
}

class _PrayerTimesWidgetState extends State<PrayerTimesWidget> {
  loc.LocationData? _currentLocation;
  HijriDate? hijriDate;
  loc.Location location = loc.Location();

  String? _currentAddress;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    getHijriDateUsingIntl();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        height: 200.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.dimGray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.white,
                  size: 20.r,
                ),
                Text(
                  _currentAddress ?? 'جاري التحميل',
                  textAlign: TextAlign.end,
                  style: AppTextStyles.font12CairoWhite,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      hijriDate?.hijriDate.fYear.toString() ?? '',
                      style: AppTextStyles.font12CairoWhite,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      hijriDate?.hijriDate.fMonthName ?? '',
                      style: AppTextStyles.font12CairoWhite,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      hijriDate?.hijriDate.fDay.toString() ?? '',
                      style: AppTextStyles.font12CairoWhite,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      hijriDate?.hijriDate.fDayName.toString() ?? '',
                      style: AppTextStyles.font12CairoWhite,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(16.r),
                    minHeight: 40.h,
                    value: 0.8,
                    color: AppColors.ebony,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: Row(
                      children: [
                        Text(
                          'الظهر',
                          style: AppTextStyles.font18CairoWhite,
                        ),
                        Text(
                          '\n   تبقى على الأذان',
                          style: AppTextStyles.font8CairoWhite,
                        ),
                        Spacer(),
                        Text(
                          '1:17',
                          style: AppTextStyles.font18CairoWhite
                              .copyWith(color: AppColors.resedaGreen),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
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
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                        PrayerTimeLine(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getUserLocation() async {
    final locationHelper = LocationService(
      location: location,
      context: context,
      onLocationSet: (locationData) {
        setState(() {
          _currentLocation = locationData;
        });
      },
      onAddressSet: (address) {
        setState(() {
          _currentAddress = address;
        });
      },
    );
    await locationHelper.getUserLocation();
  }

  void getHijriDateUsingIntl() {
    hijriDate = HijriDate.dateToHijri(DateTime.now());
  }
}
