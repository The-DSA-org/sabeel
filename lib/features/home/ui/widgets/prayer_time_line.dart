import 'package:flutter/material.dart';

class PrayerTimeLine extends StatelessWidget {
  const PrayerTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('5:14'),
        Spacer(),
        Text('الفجر'),
      ],
    );
  }
}
