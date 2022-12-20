import "package:freezed_annotation/freezed_annotation.dart";

part "weather.freezed.dart";
part "weather.g.dart";

@freezed
class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    required double elevation,
    @JsonKey(name: "current_weather")
        required WeatherCurrentWeatherDTO currentWeather,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
}

@freezed
class WeatherCurrentWeatherDTO with _$WeatherCurrentWeatherDTO {
  const factory WeatherCurrentWeatherDTO({
    required double temperature,
    @JsonKey(name: "windspeed") required double windSpeed,
    @JsonKey(name: "winddirection") required double windDirection,
    @JsonKey(name: "weathercode") required int weatherCode,
    required String time,
  }) = _WeatherCurrentWeatherDTO;

  factory WeatherCurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherCurrentWeatherDTOFromJson(json);
}
