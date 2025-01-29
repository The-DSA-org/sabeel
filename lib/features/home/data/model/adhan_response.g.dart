// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adhan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdhanResponse _$AdhanResponseFromJson(Map<String, dynamic> json) =>
    AdhanResponse(
      code: json['code'] as num?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : AdhanData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdhanResponseToJson(AdhanResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

AdhanData _$AdhanDataFromJson(Map<String, dynamic> json) => AdhanData(
      timings: json['timings'] == null
          ? null
          : Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdhanDataToJson(AdhanData instance) => <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      timezone: json['timezone'] as String?,
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
      offset: json['offset'] == null
          ? null
          : Offset.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'method': instance.method,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
      'offset': instance.offset,
    };

Offset _$OffsetFromJson(Map<String, dynamic> json) => Offset(
      imsak: json['imsak'] as num?,
      fajr: json['fajr'] as num?,
      sunrise: json['sunrise'] as num?,
      dhuhr: json['dhuhr'] as num?,
      asr: json['asr'] as num?,
      maghrib: json['maghrib'] as num?,
      sunset: json['sunset'] as num?,
      isha: json['isha'] as num?,
      midnight: json['midnight'] as num?,
    );

Map<String, dynamic> _$OffsetToJson(Offset instance) => <String, dynamic>{
      'imsak': instance.imsak,
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'sunset': instance.sunset,
      'isha': instance.isha,
      'midnight': instance.midnight,
    };

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      id: json['id'] as num?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : Params.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Params _$ParamsFromJson(Map<String, dynamic> json) => Params(
      fajr: json['fajr'] as num?,
      isha: json['isha'] as num?,
    );

Map<String, dynamic> _$ParamsToJson(Params instance) => <String, dynamic>{
      'fajr': instance.fajr,
      'isha': instance.isha,
    };

Date _$DateFromJson(Map<String, dynamic> json) => Date(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      gregorian: json['gregorian'] == null
          ? null
          : Gregorian.fromJson(json['gregorian'] as Map<String, dynamic>),
      hijri: json['hijri'] == null
          ? null
          : Hijri.fromJson(json['hijri'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateToJson(Date instance) => <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'gregorian': instance.gregorian,
      'hijri': instance.hijri,
    };

Hijri _$HijriFromJson(Map<String, dynamic> json) => Hijri(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : Weekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : Month.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : Designation.fromJson(json['designation'] as Map<String, dynamic>),
      holidays: json['holidays'] as List<dynamic>?,
      adjustedHolidays: json['adjustedHolidays'] as List<dynamic>?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$HijriToJson(Hijri instance) => <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'holidays': instance.holidays,
      'adjustedHolidays': instance.adjustedHolidays,
      'method': instance.method,
    };

Designation _$DesignationFromJson(Map<String, dynamic> json) => Designation(
      abbreviated: json['abbreviated'] as String?,
      expanded: json['expanded'] as String?,
    );

Map<String, dynamic> _$DesignationToJson(Designation instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

Month _$MonthFromJson(Map<String, dynamic> json) => Month(
      number: json['number'] as num?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
      days: json['days'] as num?,
    );

Map<String, dynamic> _$MonthToJson(Month instance) => <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
      'days': instance.days,
    };

Weekday _$WeekdayFromJson(Map<String, dynamic> json) => Weekday(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$WeekdayToJson(Weekday instance) => <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

Gregorian _$GregorianFromJson(Map<String, dynamic> json) => Gregorian(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : Weekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : Month.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : Designation.fromJson(json['designation'] as Map<String, dynamic>),
      lunarSighting: json['lunarSighting'] as bool?,
    );

Map<String, dynamic> _$GregorianToJson(Gregorian instance) => <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'lunarSighting': instance.lunarSighting,
    };

Timings _$TimingsFromJson(Map<String, dynamic> json) => Timings(
      fajr: json['fajr'] as String?,
      sunrise: json['sunrise'] as String?,
      dhuhr: json['dhuhr'] as String?,
      asr: json['asr'] as String?,
      sunset: json['sunset'] as String?,
      maghrib: json['maghrib'] as String?,
      isha: json['isha'] as String?,
      imsak: json['imsak'] as String?,
      midnight: json['midnight'] as String?,
      firstthird: json['firstthird'] as String?,
      lastthird: json['lastthird'] as String?,
    );

Map<String, dynamic> _$TimingsToJson(Timings instance) => <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'sunset': instance.sunset,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'imsak': instance.imsak,
      'midnight': instance.midnight,
      'firstthird': instance.firstthird,
      'lastthird': instance.lastthird,
    };
