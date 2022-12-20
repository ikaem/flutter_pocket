import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';

abstract class WeatherRepository {
  Future<WeatherDTO> getWeather(
    double longitude,
    double latitude,
  );
}
