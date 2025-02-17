import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:sabeel_app/core/helpers/shared_pref.dart';
import 'package:sabeel_app/core/networking/api_error_handler.dart';
import 'package:sabeel_app/features/home/data/model/adhan_query_param_request.dart';
import 'package:sabeel_app/features/home/data/model/adhan_response.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_model.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_tafseer_model.dart';
import 'package:sabeel_app/features/home/data/model/daily_hadith_model.dart';
import 'package:sabeel_app/features/home/data/model/names_of_allah_model.dart';
import 'package:sabeel_app/features/home/data/repo/home_screen_repo.dart';

part 'home_screen_state.dart';

part 'home_screen_cubit.freezed.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final HomeScreenRepo _homeScreenRepo;

  HomeScreenCubit(this._homeScreenRepo)
      : super(const HomeScreenState.initial());

  AdhanResponse? nextPrayer;

  void getPrayerTimes(AdhanQueryParamRequest queryParams) async {
    emit(HomeScreenState.prayerTimesLoading('جاري تحميل \nمواقيت الصلاة ...'));
    try {
      final apiResult = await _homeScreenRepo.getPrayerTimes(queryParams);
      apiResult.when(
        success: (prayerTimes) {
          emit(HomeScreenState.prayerTimesSuccess(prayerTimes));
        },
        failure: (errorHandler) {
          emit(HomeScreenState.prayerTimesError(errorHandler));
        },
      );
    } catch (error) {
      emit(HomeScreenState.prayerTimesError(ErrorHandler.handle('حدث خطأ ما')));
    }
  }

  void getNextPrayer(AdhanQueryParamRequest queryParams) async {
    emit(
        HomeScreenState.nextPrayerLoading('جاري تحميل موعد الصلاة القادمة...'));
    try {
      final apiResult = await _homeScreenRepo.getNextPrayer(queryParams);
      apiResult.when(
        success: (prayerTimes) {
          nextPrayer = prayerTimes;
          emit(HomeScreenState.nextPrayerSuccess(prayerTimes));
        },
        failure: (errorHandler) {
          emit(HomeScreenState.nextPrayerError(errorHandler));
        },
      );
    } catch (error) {
      emit(HomeScreenState.nextPrayerError(ErrorHandler.handle('حدث خطأ ما')));
    }
  }

  Future<int> getDailyAyahNumber() async {
    final String today = DateFormat('yyyy-MM-dd').format(DateTime.now());

    String? savedDate = await SharedPrefHelper.getString('daily_ayah_date');
    int? savedAyah = await SharedPrefHelper.getInt('daily_ayah');

    if (savedDate == today) {
      return savedAyah; // Use stored Ayah if it's the same day
    } else {
      int newAyah = Random().nextInt(6236) + 1;
      await SharedPrefHelper.setData('daily_ayah_date', today);
      await SharedPrefHelper.setData('daily_ayah', newAyah);
      return newAyah;
    }
  }

  Future<void> getDailyAyah() async {
    emit(HomeScreenState.dailyAyahLoading('جاري التحميل ...'));
    try {
      int ayahNumber = await getDailyAyahNumber();
      final apiResult = await _homeScreenRepo.getDailyAyah(ayahNumber.toString());

      apiResult.when(
        success: (dailyAyah) {
          emit(HomeScreenState.dailyAyahSuccess(dailyAyah));
          getDailyAyahTafseer(dailyAyah.data.surah.number.toString(),
              dailyAyah.data.numberInSurah.toString());
        },
        failure: (errorHandler) {
          print(errorHandler.apiErrorModel.message);
          emit(HomeScreenState.dailyAyahError(errorHandler));
        },
      );
    } catch (error) {
      print(error.toString());
      emit(HomeScreenState.dailyAyahError(ErrorHandler.handle(error)));
    }
  }

  Future<void> getDailyAyahTafseer(String surahNumber, String ayahNumber) async {
    try {
      final apiResult = await _homeScreenRepo.getDailyAyahTafseer(
          '4', surahNumber, ayahNumber);
      apiResult.when(
        success: (dailyAyahTafseer) {
          final currentState = state;
          if (currentState is DailyAyahSuccess) {
            emit(currentState.copyWith(dailyAyahTafseerModel: dailyAyahTafseer));
          }        },
        failure: (errorHandler) {
          print(errorHandler.apiErrorModel.message);
        },
      );
    } catch (error) {
      print(error.toString());
      emit(HomeScreenState.dailyAyahError(ErrorHandler.handle(error)));
    }
  }


  Future<void> loadDailyDuaa() async {
    try {
      emit(HomeScreenState.duaaLoading());
      await _homeScreenRepo.loadDailyDuaa();
      String duaa = _homeScreenRepo.updateDailyDuaa();
      emit(HomeScreenState.duaaSuccess(duaa));
    } catch (e) {
      print(e.toString());
      emit(HomeScreenState.duaaError(ErrorHandler.handle(e.toString())));
    }
  }

  Future<void> loadDailyHadith() async {
    try {
      emit(HomeScreenState.hadithLoading());
      await _homeScreenRepo.loadDailyHadith();
      DailyHadithModel hadith = _homeScreenRepo.updateDailyHadith();
      emit(HomeScreenState.hadithSuccess(hadith));
    } catch (e) {
      print(e.toString());
      emit(HomeScreenState.hadithError(ErrorHandler.handle(e.toString())));
    }
  }

  Future<void> loadDailyNameOfAllah() async {
    try {
      emit(HomeScreenState.namesOfAllahLoading());
      await _homeScreenRepo.loadNamesOfAllah();
      NamesOfAllahModel namesOfAllahModel =
          _homeScreenRepo.updateDailyNamesOfAllah();
      emit(HomeScreenState.namesOfAllahSuccess(namesOfAllahModel));
    } catch (e) {
      print(e.toString());
      emit(HomeScreenState.nextPrayerError(ErrorHandler.handle(e.toString())));
    }
  }


  bool isHadithDescriptionShown = false;
  void toggleHadithDescription() {
    isHadithDescriptionShown = !isHadithDescriptionShown;
    emit(HomeScreenState.toggleHadithDescription(isHadithDescriptionShown));
  }

  bool isAyahTafsirShown = false;
  void toggleAyahTafsir() {
    isAyahTafsirShown = !isAyahTafsirShown;
    emit(HomeScreenState.toggleAyahTafsir(isAyahTafsirShown));
  }
}
