import 'package:freezed_annotation/freezed_annotation.dart';

part 'adhan_response.g.dart';

@JsonSerializable()
class AdhanResponse {
  AdhanResponse({
    this.code,
    this.status,
    this.data,
  });

  num? code;
  String? status;
  AdhanData? data;

  factory AdhanResponse.fromJson(Map<String, dynamic> json) =>
      _$AdhanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdhanResponseToJson(this);
}

@JsonSerializable()
class AdhanData {
  AdhanData({
    this.timings,
    this.date,
    this.meta,
  });

  Timings? timings;
  Date? date;
  Meta? meta;

  factory AdhanData.fromJson(Map<String, dynamic> json) =>
      _$AdhanDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdhanDataToJson(this);
}

@JsonSerializable()
class Meta {
  Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  num? latitude;
  num? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Offset? offset;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Offset {
  Offset({
    this.imsak,
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.maghrib,
    this.sunset,
    this.isha,
    this.midnight,
  });

  num? imsak;
  num? fajr;
  num? sunrise;
  num? dhuhr;
  num? asr;
  num? maghrib;
  num? sunset;
  num? isha;
  num? midnight;

  factory Offset.fromJson(Map<String, dynamic> json) => _$OffsetFromJson(json);

  Map<String, dynamic> toJson() => _$OffsetToJson(this);
}

@JsonSerializable()
class Method {
  Method({
    this.id,
    this.name,
    this.params,
    this.location,
  });

  num? id;
  String? name;
  Params? params;
  Location? location;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    this.latitude,
    this.longitude,
  });

  num? latitude;
  num? longitude;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Params {
  Params({
    this.fajr,
    this.isha,
  });

  num? fajr;
  num? isha;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsToJson(this);
}

@JsonSerializable()
class Date {
  Date({
    this.readable,
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  String? readable;
  String? timestamp;
  Gregorian? gregorian;
  Hijri? hijri;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);
}

@JsonSerializable()
class Hijri {
  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
    this.adjustedHolidays,
    this.method,
  });

  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;
  List<dynamic>? holidays;
  List<dynamic>? adjustedHolidays;
  String? method;

  factory Hijri.fromJson(Map<String, dynamic> json) => _$HijriFromJson(json);

  Map<String, dynamic> toJson() => _$HijriToJson(this);
}

@JsonSerializable()
class Designation {
  Designation({
    this.abbreviated,
    this.expanded,
  });

  String? abbreviated;
  String? expanded;

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);

  Map<String, dynamic> toJson() => _$DesignationToJson(this);
}

@JsonSerializable()
class Month {
  Month({
    this.number,
    this.en,
    this.ar,
    this.days,
  });

  num? number;
  String? en;
  String? ar;
  num? days;

  factory Month.fromJson(Map<String, dynamic> json) => _$MonthFromJson(json);

  Map<String, dynamic> toJson() => _$MonthToJson(this);
}

@JsonSerializable()
class Weekday {
  Weekday({
    this.en,
    this.ar,
  });

  String? en;
  String? ar;

  factory Weekday.fromJson(Map<String, dynamic> json) => _$WeekdayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekdayToJson(this);
}

@JsonSerializable()
class Gregorian {
  Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.lunarSighting,
  });

  String? date;
  String? format;
  String? day;
  Weekday? weekday;
  Month? month;
  String? year;
  Designation? designation;
  bool? lunarSighting;

  factory Gregorian.fromJson(Map<String, dynamic> json) =>
      _$GregorianFromJson(json);

  Map<String, dynamic> toJson() => _$GregorianToJson(this);
}

@JsonSerializable()
class Timings {
  Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.imsak,
    this.midnight,
    this.firstthird,
    this.lastthird,
  });

  @JsonKey(name:'Fajr')
  String? fajr;
  @JsonKey(name:'Sunrise')
  String? sunrise;
  @JsonKey(name:'Dhuhr')
  String? dhuhr;
  @JsonKey(name:'Asr')
  String? asr;
  @JsonKey(name:'Sunset')
  String? sunset;
  @JsonKey(name:'Maghrib')
  String? maghrib;
  @JsonKey(name:'Isha')
  String? isha;
  @JsonKey(name:'Imsak')
  String? imsak;
  @JsonKey(name:'Midnight')
  String? midnight;
  @JsonKey(name:'Firstthird')
  String? firstthird;
  @JsonKey(name:'Lastthird')
  String? lastthird;


  factory Timings.fromJson(Map<String, dynamic> json) => _$TimingsFromJson(json);

  Map<String, dynamic> toJson() => _$TimingsToJson(this);
}
