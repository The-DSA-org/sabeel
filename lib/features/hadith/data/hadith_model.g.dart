// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HadithModel _$HadithModelFromJson(Map<String, dynamic> json) => HadithModel(
      id: (json['id'] as num).toInt(),
      hadithArabic: json['hadithArabic'] as String,
      hadithEnglish: json['hadithEnglish'] as String,
      hadithNumber: json['hadithNumber'] as String,
      englishNarrator: json['englishNarrator'] as String,
      bookSlug: json['bookSlug'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$HadithModelToJson(HadithModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hadithArabic': instance.hadithArabic,
      'hadithEnglish': instance.hadithEnglish,
      'hadithNumber': instance.hadithNumber,
      'englishNarrator': instance.englishNarrator,
      'bookSlug': instance.bookSlug,
      'status': instance.status,
    };
