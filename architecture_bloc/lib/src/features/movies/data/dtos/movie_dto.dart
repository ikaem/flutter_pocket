import 'package:freezed_annotation/freezed_annotation.dart';

part "movie_dto.freezed.dart";
part "movie_dto.g.dart";

@freezed
class MovieDTO with _$MovieDTO {
  const factory MovieDTO({
    required int id,
    required String title,
    @JsonKey(name: "episode_id") required int episodeId,
    required String openingCrawl,
    required String director,
    required String producer,
    required String releaseDate,
    required List<String> characters,
    required List<String> planets,
    required List<String> starships,
    required List<String> vehicles,
    required List<String> species,
    required String created,
    required String edited,
    required String url,
  }) = _MovieDTO;

  factory MovieDTO.fromJson(Map<String, dynamic> map) =>
      _$MovieDTOFromJson(map);
}
