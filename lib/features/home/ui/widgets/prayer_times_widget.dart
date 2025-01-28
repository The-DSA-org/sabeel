import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:sabeel_app/features/home/ui/widgets/date_and_location_line.dart';
import 'package:sabeel_app/features/home/ui/widgets/next_prayer_widget.dart';
import 'package:sabeel_app/features/home/ui/widgets/prayer_times_list.dart';
import '../../../../core/theming/app_colors.dart';
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
        height: 220.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.dimGray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            DateAndLocationLine(
              hijriDate: hijriDate,
              currentAddress: _currentAddress,
            ),
            SizedBox(
              height: 10.h,
            ),
            NextPrayerWidget(longitude: _currentLocation?.longitude ?? 0,
                latitude: _currentLocation?.latitude ?? 0),
            SizedBox(
              height: 10.h,
            ),
            PrayerTimesList(
                latitude: _currentLocation?.latitude ?? 0,
                longitude: _currentLocation?.longitude ?? 0)
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
    await locationHelper.getUserLocation().then((value) {});
  }

  void getHijriDateUsingIntl() {
    hijriDate = HijriDate.dateToHijri(DateTime.now());
  }
}
