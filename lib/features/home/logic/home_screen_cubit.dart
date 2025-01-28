import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabeel_app/core/networking/api_error_handler.dart';
import 'package:sabeel_app/features/home/data/model/adhan_query_param_request.dart';
import 'package:sabeel_app/features/home/data/model/adhan_response.dart';
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
    emit(HomeScreenState.nextPrayerLoading('جاري تحميل موعد الصلاة القادمة...'));
    try {
      final apiResult = await _homeScreenRepo.getNextPrayer(queryParams);
      apiResult.when(
        success: (prayerTimes) {
          nextPrayer=prayerTimes;
          print(nextPrayer);
          emit(HomeScreenState.nextPrayerSuccess(prayerTimes));
        },
        failure: (errorHandler) {
          emit(HomeScreenState.nextPrayerError(errorHandler));
          print(errorHandler.apiErrorModel.message);
        },
      );
    } catch (error) {
      emit(HomeScreenState.nextPrayerError(ErrorHandler.handle('حدث خطأ ما')));
    }
  }
}
