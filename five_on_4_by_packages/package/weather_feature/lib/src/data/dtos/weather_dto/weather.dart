import "package:freezed_annotation/freezed_annotation.dart";

part "weather.freezed.dart";
part "weather.g.dart";

@freezed
class WeatherDataDTO with _$WeatherDataDTO {
  const factory WeatherDataDTO({
    required int timepoint,
    required int cloudcover,
    @JsonKey(name: "lifted_index") required int liftedIndex,
  }) = _WeatherDataDTO;

  factory WeatherDataDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataDTOFromJson(json);
}

@freezed
class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    required String product,
    required String init,
    @JsonKey(name: "dataseries") required List<WeatherDataDTO> dataSeries,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherDTOFromJson(json);
}
