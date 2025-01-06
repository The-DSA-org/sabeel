import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabeel_app/features/home_layout/tabs/azkar_screen/ui/azkar_screen.dart';
import 'package:sabeel_app/features/home_layout/tabs/hadith_screen/ui/hadith_screen.dart';
import 'package:sabeel_app/features/home_layout/tabs/home_screen/ui/home_screen.dart';
import 'package:sabeel_app/features/home_layout/tabs/prayer_times_screen/ui/prayer_times_screen.dart';
import 'package:sabeel_app/features/home_layout/tabs/quran_screen/ui/quran_screen.dart';

part 'home_layout_state.dart';

part 'home_layout_cubit.freezed.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState.initial());

  int selectedIndex = 4;
  List<Widget> screens = [
    HadithScreen(),
    QuranScreen(),
    PrayerTimesScreen(),
    AzkarScreen(),
    HomeScreen(),
  ];

  void changeBottomNavBarTab(int newSelectedIndex) {
    emit(HomeLayoutState.initial());
    selectedIndex = newSelectedIndex;
    emit(HomeLayoutState.changeBottomNavBarTab());
  }
}
