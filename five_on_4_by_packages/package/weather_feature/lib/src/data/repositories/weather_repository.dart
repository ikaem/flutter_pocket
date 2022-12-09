import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';

abstract class WeatherRepository {
  Future<WeatherDTO> getWeather(
    double longitude,
    double latitude,
  );
}
