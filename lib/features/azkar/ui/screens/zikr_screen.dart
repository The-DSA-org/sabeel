import 'package:flutter/material.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';

class ZikrScreen extends StatelessWidget {
  const ZikrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اذكار الصباح',
            style: AppTextStyles.font22CairoWhite
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [],
      ),
    );
  }
}
