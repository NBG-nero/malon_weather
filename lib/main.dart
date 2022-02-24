import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/data/dataProviders/providers/weather_provider.dart';
import 'core/misc/routes/route_gen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => WeatherProvider(),
      )
    ],
    child: const MalonWeather(),
  ));
}

class MalonWeather extends StatelessWidget {
  const MalonWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Malon',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generatedRote,
    );
  }
}
