// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      id: json['id'] as int?,
      country: json['country'] as String?,
      type: json['type'] as int?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'type': instance.type,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
