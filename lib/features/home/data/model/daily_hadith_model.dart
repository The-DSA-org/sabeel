
import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily_hadith_model.g.dart';

@JsonSerializable()
class DailyHadithModel {
  DailyHadithModel(
      this.description, 
      this.hadith
      );

  factory DailyHadithModel.fromJson(dynamic json)=>_$DailyHadithModelFromJson(json);
  String? description;
  String? hadith;
  String? hadithNumber;
  String? source;

  Map<String, dynamic> toJson() => _$DailyHadithModelToJson(this);

}