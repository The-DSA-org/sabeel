import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:location/location.dart';

import '../../../../core/theming/app_text_styles.dart';

class DateAndLocationLine extends StatelessWidget {
  HijriDate? hijriDate;
  String? currentAddress;


  DateAndLocationLine({this.hijriDate, this.currentAddress});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(
          FontAwesomeIcons.locationDot,
          color: Colors.white,
          size: 20.r,
        ),
        Text(
          currentAddress ?? 'جاري التحميل',
          textAlign: TextAlign.end,
          style: AppTextStyles.font12CairoWhite,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        Row(
          children: [
            Text(
              hijriDate?.hijriDate.fDayName.toString() ?? '',
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
              hijriDate?.hijriDate.fMonthName ?? '',
              style: AppTextStyles.font12CairoWhite,
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              hijriDate?.hijriDate.fYear.toString() ?? '',
              style: AppTextStyles.font12CairoWhite,
            ),
          ],
        ),
      ],
    );
  }
}
