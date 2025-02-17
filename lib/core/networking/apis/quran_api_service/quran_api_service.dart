import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_model.dart';

import '../../api_constants.dart';

part 'quran_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.quranApiUrl)
abstract class QuranApiService {
  factory QuranApiService(Dio dio) = _QuranApiService;

  @GET("{verseNumber}/quran-uthmani")
  Future<DailyAyahModel> getDailyAyah(@Path("verseNumber") String verseNumber);

}
