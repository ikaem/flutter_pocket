import 'package:core_feature/core_feature.dart';
import 'package:weather_feature/src/data/data-sources/weather_api/api.dart';
import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';

class WeatherApi7Timer implements WeatherApi {
  static const String _apiBaseUrl = "7timer.info";
  static const String _apiPath = "bin/astro.php";

  WeatherApi7Timer({
    required this.httpWrapper,
  });

  final HttpWrapper httpWrapper;

  @override
  Future<WeatherDTO> getWeather({
    required double longitude,
    required double latitude,
  }) async {
    // TOOD this does not really need to handle its errors, because bloc will do that

    final args = HttpRequestArgs(
      scheme: "https",
      apiBaseUrl: _apiBaseUrl,
      apiContextPath: _apiPath,
      apiEndpoint: "",
      queryParameters: _generateWeatherQueryParameters(
        longitude: longitude,
        latitude: latitude,
      ),
    );

    final WeatherDTO weatherDTO = await httpWrapper.get(
      args,
      _buildWeatherDTOData,
    );

    return weatherDTO;
  }

  // TODO helpers here

  WeatherDTO _buildWeatherDTOData(dynamic response) {
    // TODO remove try catch
    try {
      final WeatherDTO dto = WeatherDTO.fromJson(response);

      return dto;
    } catch (e) {
      final error = e;

      rethrow;
    }
  }

  Map<String, String> _generateWeatherQueryParameters({
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
