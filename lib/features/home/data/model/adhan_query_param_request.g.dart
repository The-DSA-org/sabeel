// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adhan_query_param_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdhanQueryParamRequest _$AdhanQueryParamRequestFromJson(
        Map<String, dynamic> json) =>
    AdhanQueryParamRequest(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      day: (json['day'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      year: (json['year'] as num).toInt(),
    );

Map<String, dynamic> _$AdhanQueryParamRequestToJson(
        AdhanQueryParamRequest instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
    };
