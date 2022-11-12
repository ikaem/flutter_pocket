import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/data_sources/weather_api.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/repositories/weather_repository.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/repositories/weather_repository_7_timer/weather_repository_7_timer.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository7Timer(api: WeatherApi(), client: Client());
});
