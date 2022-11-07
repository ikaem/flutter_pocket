import 'package:freezed_annotation/freezed_annotation.dart';

part "film.freezed.dart";
part "film.g.dart";

@freezed
class Film with _$Film {
  factory Film({
    required String title,
    required String director,
    // required String year,
    @JsonKey(name: "release_date") required String year,
    // @JsonKey(name: 'year_opened') int? yearOpened,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
