
import 'package:freezed_annotation/freezed_annotation.dart';
part 'names_of_allah_model.g.dart';
@JsonSerializable()
class NamesOfAllahModel {
  NamesOfAllahModel({
      this.id, 
      this.name, 
      this.text,});

  factory NamesOfAllahModel.fromJson(dynamic json)=> _$NamesOfAllahModelFromJson(json);
  num? id;
  String? name;
  String? text;

  Map<String, dynamic> toJson() => _$NamesOfAllahModelToJson(this);

}