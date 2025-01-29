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

  HadithModel({
    required this.id,
    required this.hadithArabic,
    required this.hadithEnglish,
    required this.hadithNumber,
    required this.englishNarrator,
    required this.bookSlug,
    required this.status,
  });

  factory HadithModel.fromJson(Map<String, dynamic> json) =>
      _$HadithModelFromJson(json);

  Map<String, dynamic> toJson() => _$HadithModelToJson(this);
}
