import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/weather_feature.dart';

class WeatherOpenMeteoRepository implements WeatherRepository {
  WeatherOpenMeteoRepository({
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
