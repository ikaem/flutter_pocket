// TODO might be good to use this part of in other features too
part of "weather_cubit.dart";

// TODO also, possibly use euATAQBLE everywhere

abstract class WeatherState extends Equatable {
  const WeatherState();
}

// TODO consider othe states extending and not implementing
class WeatherInitialState extends WeatherState {
  const WeatherInitialState();

  @override
  List<Object?> get props => [];
}

class WeatherLoadingState extends WeatherState {
  const WeatherLoadingState();

  @override
  List<Object?> get props => [];
}

class WeatherDataState extends WeatherState {
  const WeatherDataState({
    required this.weather,
    this.dataUpdateError,
  });

  final Weather weather;
  final dynamic dataUpdateError;

  @override
  List<Object?> get props => [
        weather,
      ];
}

class WeatherErrorState extends WeatherState {
  const WeatherErrorState({
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [];
}
