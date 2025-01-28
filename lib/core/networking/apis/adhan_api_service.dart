import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sabeel_app/features/home/data/model/adhan_query_param_request.dart';
import 'package:sabeel_app/features/home/data/model/adhan_response.dart';

import '../api_constants.dart';

part 'adhan_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.adhanApiUrl)
abstract class AdhanApiService {
  factory AdhanApiService(Dio dio) = _AdhanApiService;

  @GET("/timings/{date}")
  Future<AdhanResponse> getPrayerTimesForDate(
    @Path("date") String date,
    @Query("latitude") String latitude,
    @Query("longitude") String longitude,
    @Query("method") int method,
  );

  @GET("/nextPrayer/{date}")
  Future<AdhanResponse> getNextPrayerTimeForDate(
    @Path("date") String date,
    @Query("latitude") String latitude,
    @Query("longitude") String longitude,
    @Query("method") int method,
  );
}
