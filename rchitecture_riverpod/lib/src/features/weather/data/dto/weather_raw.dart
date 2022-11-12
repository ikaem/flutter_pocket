import 'package:freezed_annotation/freezed_annotation.dart';

part "weather_raw.freezed.dart";
part "weather_raw.g.dart";

// this is not needed
@freezed
class WeatherRawInfo with _$WeatherRawInfo {
  const factory WeatherRawInfo({
    required String product,
    required String init,
  }) = _WeatherRawInfo;

  factory WeatherRawInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherRawInfoFromJson(json);
}

@freezed
class WeatherRawData with _$WeatherRawData {
  const factory WeatherRawData({
    required int timepoint,
    required int cloudcover,
    @JsonKey(name: "lifted_index") required int liftedIndex,
  }) = _WeatherRawData;

  factory WeatherRawData.fromJson(Map<String, dynamic> json) =>
      _$WeatherRawDataFromJson(json);
}

@freezed
class WeatherRaw with _$WeatherRaw {
  const factory WeatherRaw({
    required String product,
    required String init,
    @JsonKey(name: "dataseries") required List<WeatherRawData> dataSeries,
  }) = _WeatherRaw;

  factory WeatherRaw.fromJson(Map<String, dynamic> json) =>
      _$WeatherRawFromJson(json);
}
