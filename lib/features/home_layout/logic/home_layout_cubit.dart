import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabeel_app/features/azkar/ui/screens/azkar_and_dua_screen.dart';
import 'package:sabeel_app/features/hadith/ui/hadith_screen.dart';
import 'package:sabeel_app/features/home/ui/home_screen.dart';
import 'package:sabeel_app/features/prayer_times/ui/prayer_times_screen.dart';
import 'package:sabeel_app/features/quran/ui/quran_screen.dart';

part 'home_layout_state.dart';

part 'home_layout_cubit.freezed.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(const HomeLayoutState.initial());

  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    AzkarAndDuaScreen(),
    PrayerTimesScreen(),
    QuranScreen(),
    HadithScreen(),
  ];

  void changeBottomNavBarTab(int newSelectedIndex) {
    emit(HomeLayoutState.initial());
    selectedIndex = newSelectedIndex;
    emit(HomeLayoutState.changeBottomNavBarTab());
  }
}
