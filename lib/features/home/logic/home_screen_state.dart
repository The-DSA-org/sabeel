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
}
