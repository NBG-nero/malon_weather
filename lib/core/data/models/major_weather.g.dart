// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'major_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MajorWeather _$MajorWeatherFromJson(Map<String, dynamic> json) => MajorWeather(
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      main: json['main'] == null
          ? null
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      sys: json['sys'] == null
          ? null
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MajorWeatherToJson(MajorWeather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'imageUrl': instance.imageUrl,
      'sys': instance.sys,
      'name': instance.name,
    };
