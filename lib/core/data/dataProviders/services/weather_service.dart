import 'package:malon_weather/core/data/dataProviders/services/index.dart';
import 'package:malon_weather/core/data/models/error_model.dart';
import 'package:malon_weather/core/data/models/major_weather.dart';
import 'package:malon_weather/core/data/models/success_model.dart';
import 'package:malon_weather/core/logic/api_key.dart';

class WeatherService {
  getSingleCityWeather(String cityName) async {
    final result = await http.get('$cityName&appid=$apiKEY');
    if (result is ErrorModel) {
      return ErrorModel(result.error);
    }
    if (result is SuccessModel) {
      var data = result.data;
      MajorWeather mj = MajorWeather.fromJson(data);
      return SuccessModel(mj);
    }
  }
}
