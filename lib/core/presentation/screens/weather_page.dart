// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:malon_weather/core/data/dataProviders/providers/weather_provider.dart';

import 'package:malon_weather/core/data/models/major_weather.dart';
import 'package:malon_weather/core/presentation/widgets/weathericons.dart';
import 'package:provider/provider.dart';

class WeatherPage extends StatefulWidget {
  final MajorWeather majorWeather;
  const WeatherPage({
    Key? key,
    required this.majorWeather,
  }) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Consumer<WeatherProvider>(
        // stream: null,
        builder: (context, weatherProvider, child) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.majorWeather.imageUrl!),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints.expand(),
          child: Container(
              color: Colors.transparent,
              child: ListView(
                children: [
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.010),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: size.width * 0.80,
                      ),
                      const Icon(Icons.menu, color: Colors.white)
                    ],
                  ),
                  SizedBox(height: size.height * 0.080),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.010,
                      ),
                      // nm == null
                      // ? Text('')
                      // :
                      Text(
                        // '$nm',
                        widget.majorWeather.name!.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Row(
                    children: [
                      SizedBox(width: size.width * 0.010),
                      Text(
                        widget.majorWeather.weather![0].main!,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.190,
                  ),
                  Card(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.010,
                              ),
                              Text(
                                (widget.majorWeather.main!.temp - 273.15)
                                        .truncate()
                                        .toString() +
                                    '°'
                                //  alt + numeric 0176
                                ,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 90),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: size.width * 0.010,
                                ),
                                WeatherIcon().getweathercon(
                                    widget.majorWeather.weather![0].main!),
                                SizedBox(
                                  width: size.width * 0.028,
                                ),
                                Text(
                                  widget.majorWeather.weather![0].description!,
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 23),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Divider(
                    color: Colors.white60,
                    thickness: 3,
                  ),
                  const SizedBox(height: 35),
                  Card(
                    color: Colors.transparent,
                    // elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: size.width * 0.010,
                          ),

                          // 00000000000000000000000000000000000000000000WIND
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Wind',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  (widget.majorWeather.wind!.speed! * 3.6)
                                      .truncate()
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                const Text(
                                  'km/h',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    //  color: Colors.blue,
                                    height: 5,
                                    width: 55,
                                    child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        //  color: Colors.green,
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                          (Colors.red),
                                        ),
                                        minHeight: 2.5,
                                        value: weatherProvider.getProgress(
                                            (widget.majorWeather.wind!.speed! *
                                                    3.6)
                                                .truncate())
                                        //  0.13

                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.1550,
                          ),
                          // 000000000000000000000000000000000000005PRESSURE
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Pressure',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  (widget.majorWeather.main!.pressure! / 100)
                                      .toStringAsFixed(1)
                                      // .truncate()

                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                const Text(
                                  '%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    //  color: Colors.blue,
                                    height: 5,
                                    width: 55,
                                    child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        //  color: Colors.green,
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                          (Colors.green),
                                        ),
                                        minHeight: 2.5,
                                        value: weatherProvider.getProgress(
                                            (widget.majorWeather.main!
                                                        .pressure! /
                                                    100)
                                                .truncate())
                                        //  0.13

                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.155,
                          ),
                          // 00000000000000000000000000000000HUMIDITY
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Humidity',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  (widget.majorWeather.main!.humidity!)
                                      .truncate()
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                                const Text(
                                  '%',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    //  color: Colors.blue,
                                    height: 5,
                                    width: 55,
                                    child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        //  color: Colors.green,
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                          (Colors.blue),
                                        ),
                                        minHeight: 2.5,
                                        value: weatherProvider.getProgress(
                                            widget.majorWeather.main!.humidity!
                                                .truncate())
                                        //  0.13

                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      );
    });
  }
}
