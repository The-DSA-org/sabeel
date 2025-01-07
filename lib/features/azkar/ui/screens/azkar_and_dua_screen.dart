import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/ui/widgets/card_of_item.dart';

class AzkarAndDuaScreen extends StatelessWidget{
  const AzkarAndDuaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text(
            'أدعية واذكار',
            style: AppTextStyles.font22CairoWhite,
          ),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.7,
              ),
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) => CardOfItem(index: index,),
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
