import 'package:sabeel_app/features/home/data/model/adhan_query_param_request.dart';
import 'package:sabeel_app/features/home/data/model/adhan_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/apis/adhan_api_service.dart';

class HomeScreenRepo {
  final AdhanApiService _adhanApiService;

  HomeScreenRepo(this._adhanApiService);

  Future<ApiResult<AdhanResponse>> getPrayerTimes(
      AdhanQueryParamRequest queryParams) async {
    try {
      final response = await _adhanApiService.getPrayerTimesForDate(
          '${queryParams.day}-${queryParams.month}-${queryParams.year}',
          queryParams.latitude.toString(),
          queryParams.longitude.toString(),
          5);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AdhanResponse>> getNextPrayer(
      AdhanQueryParamRequest queryParams) async {
    try {
      final response = await _adhanApiService.getNextPrayerTimeForDate(
          '${queryParams.day}-${queryParams.month}-${queryParams.year}',
          queryParams.latitude.toString(),
          queryParams.longitude.toString(),
          5);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
