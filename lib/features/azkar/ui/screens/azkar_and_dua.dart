import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/di/di.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/logic/azkar_cubit.dart';
import 'package:sabeel_app/features/azkar/ui/screens/azkar_screen.dart';
import 'package:sabeel_app/features/azkar/ui/screens/dua_screen.dart';

class AzkarAndDuaScreen extends StatelessWidget {
  const AzkarAndDuaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AzkarCubit>(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 25.h,
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: AppTextStyles.font20CairoWhite,
              unselectedLabelStyle: AppTextStyles.font20CairoWhite,
              tabs: [
                Tab(text: 'الاذكار',),
                Tab(text: 'الادعية'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              AzkarScreen(),
              DuaScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
