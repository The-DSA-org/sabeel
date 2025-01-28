// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azkar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AzkarModel _$AzkarModelFromJson(Map<String, dynamic> json) => AzkarModel(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      array: (json['array'] as List<dynamic>)
          .map((e) => AzkarItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AzkarModelToJson(AzkarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'array': instance.array,
    };

AzkarItem _$AzkarItemFromJson(Map<String, dynamic> json) => AzkarItem(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$AzkarItemToJson(AzkarItem instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'count': instance.count,
    };
