import 'dart:developer';

import 'package:sabeel_app/core/networking/api_constants.dart';
import 'package:sabeel_app/core/networking/api_error_handler.dart';
import 'package:sabeel_app/core/networking/api_result.dart';
import 'package:sabeel_app/core/networking/apis/hadith_api_service/hadith_api_service.dart';
import 'package:sabeel_app/features/hadith/data/hadith_model.dart';

class HadithRepo {
  final HadithApiService _apiService;

  HadithRepo(this._apiService);

  Future<ApiResult<List<HadithModel>>> fetchAllHadiths() async {
    try {
      final response =
          await _apiService.getAllHadiths(ApiConstants.hadithApiKey);

      final hadithsData = response['hadiths']?['data'];
      if (hadithsData == null || hadithsData is! List) {
        log("Warning: Invalid API response - hadiths.data is null or not a list");
        return ApiResult.success([]);
      }

      final hadithList = hadithsData
          .map((e) => HadithModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return ApiResult.success(hadithList);
    } catch (error, stacktrace) {
      print('Fetch Hadiths Error: $error');
      print(stacktrace);
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
