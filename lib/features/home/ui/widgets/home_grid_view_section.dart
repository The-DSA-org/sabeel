import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_text_styles.dart';
import 'home_grid_item.dart';

class HomeGridViewSection extends StatelessWidget {
  Map<String, Widget> items = {
    'التقويم': Image.asset(
      'assets/images/678116-calendar-512.webp',
    ),
    'السبحة': Image.asset(
      'assets/images/2991922.png',
    ),
    'القبلة': Image.asset(
      'assets/images/10741114.png',
    ),
    'الراديو': Image.asset(
      'assets/images/7581950.png',
    ),
    'أسماء الله الحسنى': Image.asset(
      'assets/images/Allah-green.svg.png',
      color: Colors.white,
    ),
    'مناسبات إسلامية': Image.asset(
      'assets/images/975392.png',
    ),
    'بماذا تشعر؟': Image.asset(
      'assets/images/depositphotos_262684066-stock-illustration-set-of-emoji-icons-funny-removebg-preview.png',
    ),
    'المفضلة': Image.asset(
      'assets/images/heart_2437924.png',
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75),
        itemBuilder: (context, index) {
          String key = items.keys.elementAt(index);
          Widget value = items[key]!;
          return HomeGridItem(value, key);
        },
        itemCount: items.length,
      ),
    );
  }
}
