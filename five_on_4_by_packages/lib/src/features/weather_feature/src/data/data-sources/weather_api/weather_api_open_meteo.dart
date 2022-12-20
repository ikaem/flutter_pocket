import 'package:five_on_4_by_packages/src/features/core_feature/src/domain/domain.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/weather_feature.dart';

class WeatherApiOpenMeteo implements WeatherApi {
  static const String _apiBaseUrl = "api.open-meteo.com";
  static const String _apiPath = "v1";
  static const String _apiForecastEndpoint = "forecast";

  WeatherApiOpenMeteo({
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
      apiEndpoint: _apiForecastEndpoint,
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
      "longitude": longitude.toString(),
      "latitude": latitude.toString(),
      "current_weather": true.toString(),
    };
  }
}
