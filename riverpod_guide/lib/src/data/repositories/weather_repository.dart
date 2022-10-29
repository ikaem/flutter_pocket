import 'package:riverpod_guide/src/models/weather.dart';

class WeatherRepository {
  Future<Weather> getWeather({
    required String city,
  }) async {
    return Future.value(Weather(city: city));
  }
}
