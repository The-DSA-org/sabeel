import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sabeel_app/core/networking/apis/quran_api_service/quran_api_service.dart';
import 'package:sabeel_app/core/networking/apis/quran_api_service/tafseer_api_service.dart';
import 'package:sabeel_app/features/home/data/model/adhan_query_param_request.dart';
import 'package:sabeel_app/features/home/data/model/adhan_response.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_model.dart';
import 'package:sabeel_app/features/home/data/model/daily_ayah_tafseer_model.dart';
import 'package:sabeel_app/features/home/data/model/daily_hadith_model.dart';
import 'package:sabeel_app/features/home/data/model/names_of_allah_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/apis/adhan_api_service/adhan_api_service.dart';

class HomeScreenRepo {
  final AdhanApiService _adhanApiService;
  final QuranApiService _quranApiService;
  final TafseerApiService _tafseerApiService;

  HomeScreenRepo(
      this._adhanApiService, this._quranApiService, this._tafseerApiService);

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

  Future<ApiResult<DailyAyahModel>> getDailyAyah(String verseNumber) async {
    try {
      final response = await _quranApiService.getDailyAyah(verseNumber);
      return ApiResult.success(response);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<DailyAyahTafseerModel>> getDailyAyahTafseer(
      String tafseerId, String surahNumber, String ayahNumber) async {
    try {
      final response = await _tafseerApiService.getDailyAyahTafseer(tafseerId,surahNumber,ayahNumber);
      return ApiResult.success(response);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  List<String> duaa = [];

  Future<List<String>> loadDailyDuaa() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/jsons/daily_duaa.json');
      Map<String, dynamic> jsonData = json.decode(jsonString);

      duaa = List<String>.from(jsonData["daily_duaa"] ?? []);

      // Ensure the list is not empty
      if (duaa.isNotEmpty) {
        updateDailyDuaa();
      }
    } catch (e) {
      throw e.toString();
    }
    return duaa;
  }

  String updateDailyDuaa() {
    // Get the current date (day of the year)
    DateTime today = DateTime.now();
    int dayOfMonth = today.day; // Get the day of the month (1 to 31)

    // Calculate the index with modulo operation, which ensures it wraps around when it reaches the end
    int index = dayOfMonth % duaa.length;
    return duaa[index];
  }

  List<DailyHadithModel> hadith = [];

  Future<List<DailyHadithModel>> loadDailyHadith() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/jsons/daily_hadith.json');
      List<dynamic> jsonData = json.decode(jsonString);

      hadith = jsonData.map((item) => DailyHadithModel.fromJson(item)).toList();

      // Ensure the list is not empty
      if (hadith.isNotEmpty) {
        updateDailyHadith();
      }
    } catch (e) {
      throw e.toString();
    }
    return hadith;
  }

  DailyHadithModel updateDailyHadith() {
    // Get the current date (day of the year)
    DateTime today = DateTime.now();
    int dayOfMonth = today.day; // Get the day of the month (1 to 31)

    // Calculate the index with modulo operation, which ensures it wraps around when it reaches the end
    int index = dayOfMonth % hadith.length;
    return hadith[index];
  }

  List<NamesOfAllahModel> namesOfAllah = [];

  Future<List<NamesOfAllahModel>> loadNamesOfAllah() async {
    try {
      String jsonString =
          await rootBundle.loadString('assets/jsons/names_of_allah.json');
      List<dynamic> jsonData = json.decode(jsonString);

      namesOfAllah =
          jsonData.map((item) => NamesOfAllahModel.fromJson(item)).toList();

      // Ensure the list is not empty
      if (namesOfAllah.isNotEmpty) {
        updateDailyNamesOfAllah();
      }
    } catch (e) {
      throw e.toString();
    }
    return namesOfAllah;
  }

  NamesOfAllahModel updateDailyNamesOfAllah() {
    // Get the current date (day of the year)
    DateTime today = DateTime.now();
    int dayOfMonth = today.day; // Get the day of the month (1 to 31)

    // Calculate the index with modulo operation, which ensures it wraps around when it reaches the end
    int index = dayOfMonth % namesOfAllah.length;
    return namesOfAllah[index];
  }
}
