import 'package:weather_feature/src/data/data-sources/weather_api/api.dart';
import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';

class WeatherApi7Timer implements WeatherApi {
  @override
  Future<WeatherDTO> getWeather({
    required String longitude,
    required String latitude,
  }) async {
    // TOOD this does not really need to handle its errors, because bloc will do that
  }

  // TODO helpers here

  Map<String, dynamic> _getWeatherQueryParameters({
    required double longitude,
    required double latitude,
  }) {
    return {
      "lon": longitude.toString(),
      "lat": latitude.toString(),
      "ac": "0",
      "unit": "metric",
      "output": "json",
      "tzshift": "0",
    };
  }
}
