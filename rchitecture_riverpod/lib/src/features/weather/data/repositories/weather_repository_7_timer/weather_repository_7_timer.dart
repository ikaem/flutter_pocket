import 'package:http/http.dart';
import 'package:rchitecture_riverpod/src/application/services/api_handler/api_handler.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/data_sources/weather_api.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/dto/weather_raw.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/repositories/weather_repository.dart';

class WeatherRepository7Timer implements WeatherRepository {
  WeatherRepository7Timer({
    required this.api,
    required this.client,
  });

  final WeatherApi api;
  final Client client;

  @override
  Future<WeatherRaw> getOne({
    required double longitude,
    required double latitude,
  }) async {
    //
    final WeatherRaw weatherRaw = await ApiHandler.handleApiGetResponse(
      url: api.weather(
        latitude: latitude,
        longitude: longitude,
        // longitude: 45.0,
        // latitude: 16.0,
      ),
      client: client,
      dataBuilder: (data) {
        return WeatherRaw.fromJson(data);
      },
    );

    return weatherRaw;
  }
}
