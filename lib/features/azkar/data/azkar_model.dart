import 'package:json_annotation/json_annotation.dart';

part 'azkar_model.g.dart';

@JsonSerializable()
class AzkarModel {
  final int id;
  final String category;
  final List<AzkarItem> array;

  AzkarModel({required this.id, required this.category, required this.array});

  factory AzkarModel.fromJson(Map<String, dynamic> json) =>
      _$AzkarModelFromJson(json);

  Map<String, dynamic> toJson() => _$AzkarModelToJson(this);
}

@JsonSerializable()
class AzkarItem {
  final int id;
  final String text;
   int count;

  AzkarItem({required this.id, required this.text, required this.count});

  factory AzkarItem.fromJson(Map<String, dynamic> json) =>
      _$AzkarItemFromJson(json);

  Map<String, dynamic> toJson() => _$AzkarItemToJson(this);
}
