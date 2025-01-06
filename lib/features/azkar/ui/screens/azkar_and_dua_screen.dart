import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/azkar/ui/screens/azkar_tab.dart';
import 'package:sabeel_app/features/azkar/ui/screens/dua_tab.dart';

class AzkarAndDuaScreen extends StatelessWidget{
  const AzkarAndDuaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TabController? tabController ;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 20.h,
          bottom:TabBar(
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: AppColors.chineseWhite,
            indicatorWeight: 3.w,
            tabs: [
              Tab(
                child: Center(
                  child: Text(
                    'أذكار',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.font22CairoWhite,
                    ),
                  ),
                ),
              Tab(
                child: Center(
                  child: Text(
                    'أدعية',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.font22CairoWhite,

                    // style: AppTextStyles.font14RobotoGrey(context).copyWith(
                    //   fontWeight: FontWeight.w600,
                    // ),

                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            AzkarTab(),
            DuaTab(),
          ],
        ),
      ),
    );
  }
}
