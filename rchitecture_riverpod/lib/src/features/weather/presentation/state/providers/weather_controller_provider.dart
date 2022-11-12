import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/repositories/weather_repository.dart';
import 'package:rchitecture_riverpod/src/features/weather/domain/models/weather.dart';
import 'package:rchitecture_riverpod/src/features/weather/domain/types/get_weather_args.dart';
import 'package:rchitecture_riverpod/src/features/weather/presentation/controllers/weather_controller.dart';
import 'package:rchitecture_riverpod/src/features/weather/presentation/state/providers/weather_repository_provider.dart';

final weatherControllerProvider = StateNotifierProvider.autoDispose
    .family<WeatherController, AsyncValue<Weather>, GetWeatherArgs>((
  ref,
  weatherArgs,
) {
  final WeatherRepository weatherRepository =
      ref.watch(weatherRepositoryProvider);

  return WeatherController(
    weatherRepository: weatherRepository,
    longitude: weatherArgs.longitude,
    latitude: weatherArgs.latitude,
  );
});
