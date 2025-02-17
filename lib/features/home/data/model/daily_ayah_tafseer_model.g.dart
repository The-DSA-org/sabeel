// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_ayah_tafseer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyAyahTafseerModel _$DailyAyahTafseerModelFromJson(
        Map<String, dynamic> json) =>
    DailyAyahTafseerModel(
      tafseerId: json['tafseer_id'] as num?,
      tafseerName: json['tafseer_name'] as String?,
      ayahUrl: json['ayah_url'] as String?,
      ayahNumber: json['ayah_number'] as num?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$DailyAyahTafseerModelToJson(
        DailyAyahTafseerModel instance) =>
    <String, dynamic>{
      'tafseer_id': instance.tafseerId,
      'tafseer_name': instance.tafseerName,
      'ayah_url': instance.ayahUrl,
      'ayah_number': instance.ayahNumber,
      'text': instance.text,
    };
