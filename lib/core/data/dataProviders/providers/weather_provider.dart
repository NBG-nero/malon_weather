import 'dart:math';

import 'package:flutter/material.dart';
import 'package:malon_weather/core/data/dataProviders/services/weather_service.dart';
import 'package:malon_weather/core/data/models/error_model.dart';
import 'package:malon_weather/core/data/models/major_weather.dart';
import 'package:malon_weather/core/misc/extras/customtoast.dart';

class WeatherProvider extends ChangeNotifier {
  List<MajorWeather> weatherDetailsList = <MajorWeather>[];
  List<AssetImage> images = <AssetImage>[];
  final random = Random();
  bool isloading = false;
  final WeatherService _weatherService = WeatherService();

  imageList() {
    images.add(const AssetImage('assets/images/bg1.jpg'));
    images.add(const AssetImage('assets/images/bg2.jpg'));
    images.add(const AssetImage('assets/images/bg3.jpg'));
    images.add(const AssetImage('assets/images/bg4.jpg'));
    images.add(const AssetImage('assets/images/bg5.jpg'));
    images.add(const AssetImage('assets/images/bg6.jpg'));
    images.add(const AssetImage('assets/images/bg7.jpg'));
    images.add(const AssetImage('assets/images/bg8.jpg'));
    images.add(const AssetImage('assets/images/bg9.jpg'));
    images.add(const AssetImage('assets/images/bg10.jpg'));
  }

  final List<String> cityNames = [
    'Lagos',
    "Miami",
    'New York',
    'Abuja',
    "London",
    'Los Angeles',
    "Tokyo",
    "Paris",
    "Seoul",
    "Cairo"
  ];

  // final stringList = cityNames[random.nextInt(list.length)];

  Future<MajorWeather> getCityWeather(String cityName) async {
    final result = await _weatherService.getSingleCityWeather(cityName);
    if (result is ErrorModel) {
      showErrorToast('Request Failed\nplease check your connection',);
      
    }
    var data = result.data;
    MajorWeather mj = data;
    return mj;
  }

  addWeatherToWeatherList() async {
    setLoading(true);
    for (var cityname in cityNames) {
      MajorWeather mj = await getCityWeather(cityname);
      weatherDetailsList.add(mj);
      notifyListeners();
    }
    // Map<String, AssetImage> map = Map.fromIterables(cityNames, images);
    // map.addAll;
    setLoading(false);
  }

  setLoading(value) {
    isloading = value;
    notifyListeners();
  }

  getProgress(dynamic value) {
    return value / 100;
  }

  Color getProgressColor(dynamic value) {
    switch (value) {
      case '12':
        return Colors.green;
      case '19':
        return Colors.blue;
      default:
        return Colors.red;
    }
  }

  String getweathermage(String val) {
    switch (val) {
      case 'Lagos':
        // return images[0];
        return 'assets/images/bg1.jpg';
      case 'Miami':
        return 'assets/images/bg2.jpg';
      case 'New York':
        return 'assets/images/bg3.jpg';
      case 'Abuja':
        return 'assets/images/bg4.jpg';
      case 'London':
        return 'assets/images/bg5.jpg';
      case 'Los Angeles':
        return 'assets/images/bg6.jpg';
      case 'Tokyo':
        return 'assets/images/bg7.jpg';
      case 'Paris':
        return 'assets/images/bg8.jpg';
      case 'Seoul':
        return 'assets/images/bg9.jpg';
      case 'Cairo':
        return 'assets/images/bg10.jpg';
      default:
        return 'assets/images/bg11.jpg';
    }
  }
}
