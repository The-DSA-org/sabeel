import 'dart:convert';
import 'package:flutter/services.dart';
import 'azkar_model.dart';

class AzkarRepository {
  Future<List<AzkarModel>> loadAzkar() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/jsons/azkar.json');
      final List<dynamic> jsonData = jsonDecode(jsonString);

      return jsonData.map((e) => AzkarModel.fromJson(e)).toList();
    } catch (e) {
      throw Exception("Failed to load Azkar: $e");
    }
  }

  Future<List<AzkarModel>> loadDuas() async {
    final allData = await loadAzkar();
    return allData.where((item) => item.category.startsWith('دعاء')).toList();
  }

  Future<List<AzkarModel>> loadRemembrances() async {
    final allData = await loadAzkar();
    return allData
        .where((item) => item.category.startsWith('ذكر') || item.category.startsWith('أذكار'))
        .toList();
  }
}
