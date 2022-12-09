import "package:flutter_bloc/flutter_bloc.dart";
import "package:equatable/equatable.dart";
// TODO remove this, put the export inside the barrel
import "package:weather_feature/weather_feature.dart";

part "weather_cubit_state.dart";

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({
    // TODO this is not needed if we call the function from outside of the cubit
    required this.longitude,
    required this.latitude,
    required this.weatherUseCases,
  }) : super(const WeatherInitialState()) {
    fetchWeather(
        // longitude,
        // latitude,
        );
  }

  final WeatherUseCases weatherUseCases;
  // TODO note that we would not need this if we manually fetch, which is what i would like
  // TODO also, this possible does not need be set here
  final double longitude;
  final double latitude;

  // TODO methods
  Future<void> fetchWeather() async {
    emit(const WeatherLoadingState());

    try {
      final Weather weather = await weatherUseCases.getWeather(
        longitude: longitude,
        latitude: latitude,
      );

      emit(WeatherDataState(weather: weather));
    } catch (e) {
      final error = e;
      /* TODO test */
      emit(WeatherErrorState(message: e.toString()));
    }
  }

  Future<void> refetchWeather() async {
    await fetchWeather();
  }
}
