// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_hadith_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyHadithModel _$DailyHadithModelFromJson(Map<String, dynamic> json) =>
    DailyHadithModel(
      json['description'] as String?,
      json['hadith'] as String?,
    )
      ..hadithNumber = json['hadithNumber'] as String?
      ..source = json['source'] as String?;

Map<String, dynamic> _$DailyHadithModelToJson(DailyHadithModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'hadith': instance.hadith,
      'hadithNumber': instance.hadithNumber,
      'source': instance.source,
    };
