// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) => MainWeather(
      temp: json['temp'],
      feels_like: json['feels_like'],
      temp_min: json['temp_min'],
      temp_max: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );

Map<String, dynamic> _$MainWeatherToJson(MainWeather instance) =>
    <String, dynamic>{
      'feels_like': instance.feels_like,
      'humidity': instance.humidity,
      'pressure': instance.pressure,
      'temp': instance.temp,
      'temp_max': instance.temp_max,
      'temp_min': instance.temp_min,
    };
