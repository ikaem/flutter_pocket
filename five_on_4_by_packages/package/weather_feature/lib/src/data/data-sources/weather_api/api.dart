import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';

abstract class WeatherApi {
  Future<WeatherDTO> getWeather({
    required double longitude,
    required double latitude,
  });
}
