import 'package:json_annotation/json_annotation.dart';

part 'hadith_model.g.dart';

@JsonSerializable()
class HadithModel {
  final int id;
  final String hadithArabic;
  final String hadithEnglish;
  final String hadithNumber;
  final String englishNarrator;
  final String bookSlug;
  final String status;
  final Chapter chapter;

  HadithModel({
    required this.id,
    required this.hadithArabic,
    required this.hadithEnglish,
    required this.hadithNumber,
    required this.englishNarrator,
    required this.bookSlug,
    required this.status,
    required this.chapter,
  });

  factory HadithModel.fromJson(Map<String, dynamic> json) =>
      _$HadithModelFromJson(json);

  Map<String, dynamic> toJson() => _$HadithModelToJson(this);
}

@JsonSerializable()
class Chapter {
  final int id;
  final String chapterNumber;
  final String chapterEnglish;
  final String chapterArabic;

  Chapter({
    required this.id,
    required this.chapterNumber,
    required this.chapterEnglish,
    required this.chapterArabic,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
