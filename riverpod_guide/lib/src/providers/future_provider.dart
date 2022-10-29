import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/weather_repository.dart';
import 'package:riverpod_guide/src/models/weather.dart';

// future provider that returns a future
final weatherFutureProvider = FutureProvider.autoDispose<Weather>((ref) {
// we get instance of the weather repository from its provider
// why watch? to rebuild widget if something changes?
  final weatherRepository = ref.watch(weatherRepositoryProvider);

  return weatherRepository.getWeather(city: "London");
});

// just a regular provider that will instantiate a weather repository
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  return WeatherRepository();
});
