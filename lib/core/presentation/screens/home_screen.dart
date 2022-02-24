import 'package:flutter/material.dart';
import 'package:malon_weather/core/data/dataProviders/providers/weather_provider.dart';
import 'package:malon_weather/core/data/models/major_weather.dart';
import 'package:malon_weather/core/presentation/widgets/weathericons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) =>
        Provider.of<WeatherProvider>(context, listen: false)
            .addWeatherToWeatherList());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
        builder: (context, weatherProvider, child) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(''),
            centerTitle: true,
            backgroundColor:Colors.white
          ),
          body: ListView.builder(
              itemCount: weatherProvider.weatherDetailsList.length,
              itemBuilder: (context, index) {
                MajorWeather mj = weatherProvider.weatherDetailsList[index];
                mj.imageUrl = weatherProvider.getweathermage(mj.name!);
                return Material(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () => Navigator.of(context)
                              .pushNamed('w', arguments: mj),
                          child: Card( elevation: 15,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(mj.imageUrl!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 23,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              mj.imageUrl == ""
                                                  ? 'assets/images/bg4.jpg'
                                                  : mj.imageUrl!),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        mj.name!,
                                        style: const TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(mj.sys!.country.toString(),
                                          style: const TextStyle(
                                              color: Colors.white,fontWeight:FontWeight.bold),),
                                    ),
                                    Text(mj.weather![0].main!,
                                        style: const TextStyle(
                                            color: Colors.white,fontWeight:FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [ 
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: WeatherIcon().getweathercon(
                                              mj.weather![0].main!,
                                            ),
                                          ),
                                          Text(
                                              (mj.main!.temp - 273.15)
                                                      .truncate()
                                                      .toString() +
                                                  '°'
                                              //  alt + numeric 0176
                                              ,
                                              style: const TextStyle(
                                                  color: Colors.white,fontWeight:FontWeight.bold)
                                    
                                              // style: const TextStyle(color: Colors.white, fontSize: 90),
                                              ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          Text(
                                              (mj.wind!.speed! * 3.6)
                                                  .truncate()
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,fontWeight:FontWeight.bold)),
                                          const Text('Km/h',
                                              style: TextStyle(
                                                  color: Colors.white,fontWeight:FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }));
    });
  }
}
