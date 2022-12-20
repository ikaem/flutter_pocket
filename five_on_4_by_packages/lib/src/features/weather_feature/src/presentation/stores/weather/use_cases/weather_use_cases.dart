// TODO maybe, eventually, this can be split into multiple classes - not for now thoguh
// TODO for instance, if we do need muuulitple repositories passed to it

import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/data.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/domain/domain.dart';

class WeatherUseCases {
  WeatherUseCases({
    required this.weatherRepository,
  });

  final WeatherRepository weatherRepository;

  Future<Weather> getWeather({
    required double longitude,
    required double latitude,
  }) async {
    final WeatherDTO dto =
        await weatherRepository.getWeather(longitude, latitude);

    final Weather weather = Weather.fromDTO(dto);

    return weather;
  }
}
