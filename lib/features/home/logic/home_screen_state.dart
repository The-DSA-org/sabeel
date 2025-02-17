part of 'home_screen_cubit.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;

  const factory HomeScreenState.prayerTimesLoading(String loadingMsg) =
      PrayerTimesLoading;
  const factory HomeScreenState.prayerTimesSuccess(
      AdhanResponse adhanResponse) = PrayerTimesSuccess;
  const factory HomeScreenState.prayerTimesError(ErrorHandler error) =
      PrayerTimesError;

  const factory HomeScreenState.nextPrayerLoading(String loadingMsg) =
      NextPrayerLoading;
  const factory HomeScreenState.nextPrayerSuccess(AdhanResponse adhanResponse) =
      NextPrayerSuccess;
  const factory HomeScreenState.nextPrayerError(ErrorHandler error) =
      NextPrayerError;

  const factory HomeScreenState.dailyAyahLoading(String loadingMsg) =
      DailyAyahLoading;
  const factory HomeScreenState.dailyAyahSuccess(DailyAyahModel dailyAyahModel,
      {DailyAyahTafseerModel? dailyAyahTafseerModel}) =
      DailyAyahSuccess;
  const factory HomeScreenState.dailyAyahError(ErrorHandler error) =
      DailyAyahError;

  const factory HomeScreenState.duaaLoading() =
      DuaaLoading;
  const factory HomeScreenState.duaaSuccess(String dailyDuaa) =
      DuaaSuccess;
  const factory HomeScreenState.duaaError(ErrorHandler error) =
      DuaaError;

  const factory HomeScreenState.hadithLoading() = HadithLoading;
  const factory HomeScreenState.hadithSuccess(DailyHadithModel dailyHadith) = HadithSuccess;
  const factory HomeScreenState.hadithError(ErrorHandler error) = HadithError;

  const factory HomeScreenState.namesOfAllahLoading() = NamesOfAllahLoading;
  const factory HomeScreenState.namesOfAllahSuccess(NamesOfAllahModel dailyNameOfAllah) =
  NamesOfAllahSuccess;
  const factory HomeScreenState.namesOfAllahError(ErrorHandler error) = NamesOfAllahError;

  const factory HomeScreenState.toggleAyahTafsir(bool isAyahTafsirShown) = ToggleAyahTafsir;
  const factory HomeScreenState.toggleHadithDescription(bool isHadithDescriptionShown) = ToggleHadithDescription;
}
