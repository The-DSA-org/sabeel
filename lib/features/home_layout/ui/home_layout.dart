import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabeel_app/core/theming/app_colors.dart';
import 'package:sabeel_app/core/theming/app_text_styles.dart';
import 'package:sabeel_app/features/home_layout/logic/home_layout_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
      builder: (context, state) {
        return Scaffold(
          // backgroundColor: AppColors.gunmetal,
          body: BlocProvider.of<HomeLayoutCubit>(context)
              .screens[BlocProvider.of<HomeLayoutCubit>(context).selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              selectedLabelStyle: AppTextStyles.font14CairoWhite,
              unselectedLabelStyle: AppTextStyles.font14CairoWhite,
              showUnselectedLabels: true,
              elevation: 5,
              currentIndex:
                  BlocProvider.of<HomeLayoutCubit>(context).selectedIndex,
              onTap: (index) {
                BlocProvider.of<HomeLayoutCubit>(context)
                    .changeBottomNavBarTab(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house),
                    label: 'الرئيسية',
                    backgroundColor: AppColors.darkEbony),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.starAndCrescent),
                    label: 'الأذكار',
                    backgroundColor: AppColors.darkEbony),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.mosque),
                    label: 'المواقيت',
                    backgroundColor: AppColors.darkEbony),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.bookQuran),
                    label: 'قرآن',
                    backgroundColor: AppColors.darkEbony),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.scroll),
                    label: 'أحاديث',
                    backgroundColor: AppColors.darkEbony),
              ]),
        );
      },
    );
  }
}
