// import 'dart:convert';

// import 'package:flutter/foundation.dart';

import 'package:json_annotation/json_annotation.dart';

import 'main_weather.dart';
import 'sys.dart';
import 'weather_desc.dart';
import 'wind.dart';

part 'major_weather.g.dart';

@JsonSerializable()
class MajorWeather {
  List<Weather>? weather;
  MainWeather? main;
  Wind? wind;
  String? imageUrl;
  Sys? sys;
  String? name;
  MajorWeather({
    this.weather,
    this.main,
    this.wind,
    this.sys,
    this.imageUrl,
    this.name,
  });

  factory MajorWeather.fromJson(Map<String, dynamic> json) =>
      _$MajorWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$MajorWeatherToJson(this);
}
