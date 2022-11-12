import 'package:rchitecture_riverpod/src/features/weather/data/dto/weather_raw.dart';

abstract class WeatherRepository {
  Future<WeatherRaw> getOne({
    required double longitude,
    required double latitude,
  });
}
