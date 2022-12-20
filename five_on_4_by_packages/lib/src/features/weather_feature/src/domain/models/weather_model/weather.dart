import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/dtos/dtos.dart';

// TODO this could also use freezed eventually
class Weather extends Equatable {
  const Weather({
    required this.elevation,
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    // TODO this should probably be an enum of some kind or such
    required this.weatherCode,
  });

  final double elevation;
  final double temperature;
  final double windSpeed;
  final double windDirection;
  final int weatherCode;

// making named constructor
  factory Weather.fromDTO(WeatherDTO dto) {
    return Weather(
      elevation: dto.elevation,
      temperature: dto.currentWeather.temperature,
      windSpeed: dto.currentWeather.windSpeed,
      windDirection: dto.currentWeather.windDirection,
      weatherCode: dto.currentWeather.weatherCode,
    );
  }

  @override
  List<Object?> get props => [
        // TODO removing this so that bloc can always create new weather if refetch weather call fails - otherwise, bloc will not create new state
        elevation,
        temperature,
        windSpeed,
        windDirection,
        weatherCode,
      ];
}
