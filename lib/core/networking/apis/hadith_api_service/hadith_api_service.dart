import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sabeel_app/core/networking/api_constants.dart';

part 'hadith_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.hadithApiUrl)
abstract class HadithApiService {
  factory HadithApiService(Dio dio, {String baseUrl}) = _HadithApiService;

  @GET("hadiths/")
  Future<dynamic> getAllHadiths(
    @Query("apiKey") String apiKey,
  );
}
