import 'package:json_annotation/json_annotation.dart';

part 'daily_ayah_model.g.dart';

@JsonSerializable()
class DailyAyahModel {
  final int code;
  final String status;
  final AyahData data;

  DailyAyahModel({required this.code, required this.status, required this.data});

  factory DailyAyahModel.fromJson(Map<String, dynamic> json) =>
      _$DailyAyahModelFromJson(json);

  Map<String, dynamic> toJson() => _$DailyAyahModelToJson(this);
}

@JsonSerializable()
class AyahData {
  final int number;
  final String text;
  final Edition edition;
  final Surah surah;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;
  final bool sajda;

  AyahData({
    required this.number,
    required this.text,
    required this.edition,
    required this.surah,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  factory AyahData.fromJson(Map<String, dynamic> json) =>
      _$AyahDataFromJson(json);

  Map<String, dynamic> toJson() => _$AyahDataToJson(this);
}

@JsonSerializable()
class Edition {
  final String identifier;
  final String language;
  final String name;
  final String englishName;
  final String format;
  final String type;
  final String direction;

  Edition({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
    required this.direction,
  });

  factory Edition.fromJson(Map<String, dynamic> json) =>
      _$EditionFromJson(json);

  Map<String, dynamic> toJson() => _$EditionToJson(this);
}

@JsonSerializable()
class Surah {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final int numberOfAyahs;
  final String revelationType;

  Surah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.numberOfAyahs,
    required this.revelationType,
  });

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);

  Map<String, dynamic> toJson() => _$SurahToJson(this);
}
