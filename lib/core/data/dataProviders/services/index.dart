import 'package:malon_weather/core/data/dataProviders/services/http_service.dart';

const String baseUrl = "http://api.openweathermap.org/data/2.5/weather?q=";
HttpService http = HttpService(baseUrl);
