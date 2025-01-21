import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/data/azkar_model.dart';
import 'package:sabeel_app/features/home/ui/widgets/daily_item_widget.dart';

class ZikrScreen extends StatefulWidget {
  final List<AzkarModel> azkar;
  final int indexOfAzkar;

  const ZikrScreen({super.key, required this.azkar, required this.indexOfAzkar});

  @override
  State<ZikrScreen> createState() => _ZikrScreenState();
}

class _ZikrScreenState extends State<ZikrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.azkar[widget.indexOfAzkar].category,
          style: AppTextStyles.font22CairoWhite,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  final azkarItem = widget.azkar[widget.indexOfAzkar].array[index];
                  return DailyItemWidget(
                    title: widget.azkar[widget.indexOfAzkar].category,
                    mainText: azkarItem.text,
                    counter: buildCounter(azkarItem),
                  );
                },
                childCount: widget.azkar[widget.indexOfAzkar].array.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCounter(AzkarItem azkarItem) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.ebony,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              if (azkarItem.count > 0) {
                azkarItem.count--;
              }
            });
          },
          child: Text(
            azkarItem.count.toString(),
            style: AppTextStyles.font18CairoWhite,
          ),
        ),
      ),
    );
  }
}
