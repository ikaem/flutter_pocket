import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';

abstract class WeatherApi {
  Future<WeatherDTO> getWeather({
    required double longitude,
    required double latitude,
  });
}

// TODO use proper barrels everywhere