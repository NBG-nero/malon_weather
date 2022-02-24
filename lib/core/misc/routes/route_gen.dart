import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malon_weather/core/data/models/major_weather.dart';
import 'package:malon_weather/core/presentation/screens/screens.dart';

class RouteGenerator {
  static Route<dynamic> generatedRote(RouteSettings settings) {
        // MajorWeather mj = MajorWeather();

    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'w':
        // MajorWeather mj = MajorWeather();
        if (args is MajorWeather) {
          return MaterialPageRoute(
              builder: (_) => WeatherPage(majorWeather: args));
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        backgroundColor: Colors.red,
        // appBar: AppBar(
        //   title: Text('Error'),
        // ),
        body: Center(
          child: Text(
            "ERROR",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      );
    });
  }
}
