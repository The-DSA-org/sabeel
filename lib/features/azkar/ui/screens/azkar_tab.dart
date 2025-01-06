import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/features/azkar/ui/widgets/card_of_item.dart';

class AzkarTab extends StatelessWidget{
  const AzkarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 15.w, // Spacing between columns
            mainAxisSpacing: 20.h, // Spacing between rows
            childAspectRatio: 1, // Aspect ratio of the items
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => CardOfItem(),
            childCount: 5,
          ),
        ),
      ],
    );
  }
}
