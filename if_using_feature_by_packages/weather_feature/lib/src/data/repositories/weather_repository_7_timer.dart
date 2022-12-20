import 'package:weather_feature/src/data/data-sources/weather_api/api.dart';
import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';
import 'package:weather_feature/src/data/repositories/weather_repository.dart';

class WeatherRepository7Timer implements WeatherRepository {
  WeatherRepository7Timer({
    required this.api,
  });

  final WeatherApi api;

  @override
  Future<WeatherDTO> getWeather(double longitude, double latitude) async {
    // TODO: implement getWeather
    // throw UnimplementedError();
    final WeatherDTO dto =
        await api.getWeather(longitude: longitude, latitude: latitude);

    return dto;
  }
}
