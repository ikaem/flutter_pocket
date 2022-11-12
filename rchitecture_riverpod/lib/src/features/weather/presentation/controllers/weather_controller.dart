import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/dto/weather_raw.dart';
import 'package:rchitecture_riverpod/src/features/weather/data/repositories/weather_repository.dart';
import 'package:rchitecture_riverpod/src/features/weather/domain/models/weather.dart';
import 'package:rchitecture_riverpod/src/utils/exceptions/api_exception/api_exception.dart';

class WeatherController extends StateNotifier<AsyncValue<Weather>> {
  WeatherController({
    required this.weatherRepository,
    required this.longitude,
    required this.latitude,
  }) : super(
          const AsyncValue.loading(),
        ) {
    // note that we are loading the data immeidately to set the state
    loadOne(
      longitude: longitude,
      latitude: latitude,
    );
  }

  WeatherRepository weatherRepository;
  // TODO maybe not neven needed these because we dont use it in the controller at all
  double longitude;
  double latitude;

// we are just setting state here, nothing else
  Future<void> loadOne({
    required double longitude,
    required double latitude,
  }) async {
    try {
      state = const AsyncValue.loading();
      // final weatherRaw = await weatherRepository.getOne();
      //
      final WeatherRaw weatherRaw = await weatherRepository.getOne(
        longitude: longitude,
        latitude: latitude,
      );

      state = AsyncValue.data(Weather.fromRaw(weatherRaw));
    } on ApiException catch (e) {
      // this is very cool catching error
      state = e.asAsyncValue();
    }
  }
}
