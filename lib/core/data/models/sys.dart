import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';

@JsonSerializable()
class Sys {
  int? id;
  String? country;
  int? type;
  int? sunrise;
  int? sunset;

  Sys({
    this.id,
    this.country,
    this.type,
    this.sunrise,
    this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
  Map<String, dynamic> toJson() => _$SysToJson(this);
}
