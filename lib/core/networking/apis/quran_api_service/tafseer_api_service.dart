import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_model.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_tafseer_model.dart';

import '../../api_constants.dart';

part 'tafseer_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.tafseerApiUrl)
abstract class TafseerApiService {
  factory TafseerApiService(Dio dio) = _TafseerApiService;

  @GET("{tafseer_id}/{surah_number}/{ayah_number}")
  Future<DailyAyahTafseerModel> getDailyAyahTafseer(
    @Path("tafseer_id") String tafseerId,
    @Path("surah_number") String surahNumber,
    @Path("ayah_number") String ayahNumber,
  );
}
