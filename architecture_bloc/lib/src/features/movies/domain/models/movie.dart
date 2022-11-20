import 'package:architecture_bloc/src/features/movies/data/dtos/movie_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "movie.freezed.dart";
// TODO possibly not even needed
// part "person.g.dart";

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    required String director,
    required String created,
  }) = _Movie;

  factory Movie.fromDTO(MovieDTO dto) {
    return Movie(
      id: dto.id,
      title: dto.title,
      director: dto.director,
      created: dto.created,
    );
  }
}
