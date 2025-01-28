//'http://api.aladhan.com/v1/calendar?month=2&year=2023&day=5&latitude=30.292666&longitude=31.742343'
import 'package:freezed_annotation/freezed_annotation.dart';
part 'adhan_query_param_request.g.dart';
@JsonSerializable()
class AdhanQueryParamRequest {
  double longitude;
  double latitude;
  int day;
  int month;
  int year;

  AdhanQueryParamRequest(
      {required this.longitude,
      required this.latitude,
      required this.day,
      required this.month,
      required this.year});

  Map<String, dynamic> toJson() => _$AdhanQueryParamRequestToJson(this);
}
