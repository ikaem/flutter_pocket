// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDTO _$$_WeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherDTO(
      elevation: (json['elevation'] as num).toDouble(),
      currentWeather: WeatherCurrentWeatherDTO.fromJson(
          json['current_weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherDTOToJson(_$_WeatherDTO instance) =>
    <String, dynamic>{
      'elevation': instance.elevation,
      'current_weather': instance.currentWeather,
    };

_$_WeatherCurrentWeatherDTO _$$_WeatherCurrentWeatherDTOFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherCurrentWeatherDTO(
      temperature: (json['temperature'] as num).toDouble(),
      windSpeed: (json['windspeed'] as num).toDouble(),
      windDirection: (json['winddirection'] as num).toDouble(),
      weatherCode: json['weathercode'] as int,
      time: json['time'] as String,
    );

Map<String, dynamic> _$$_WeatherCurrentWeatherDTOToJson(
        _$_WeatherCurrentWeatherDTO instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'windspeed': instance.windSpeed,
      'winddirection': instance.windDirection,
      'weathercode': instance.weatherCode,
      'time': instance.time,
    };
