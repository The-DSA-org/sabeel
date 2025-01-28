import 'package:flutter/material.dart';


class PrayerTimeLine extends StatelessWidget {
  String prayName;
  String prayTime;


  PrayerTimeLine(this.prayName, this.prayTime);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(prayName),
        Spacer(),
        Text(prayTime),
      ],
    );
  }
}
