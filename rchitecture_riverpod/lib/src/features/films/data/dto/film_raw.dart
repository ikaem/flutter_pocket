// lib\src\features\films\data\dto\film_raw.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part "film_raw.freezed.dart";
part "film_raw.g.dart";

@freezed
class FilmRawDates with _$FilmRawDates {
  const factory FilmRawDates({
    required String created,
    required String edited,
    @JsonKey(name: "release_date") required String released,
  }) = _FilmRawDates;

  factory FilmRawDates.fromJson(Map<String, dynamic> json) =>
      _$FilmRawDatesFromJson(json);
}

@freezed
class FilmRawInfo with _$FilmRawInfo {
  const factory FilmRawInfo({
    required String title,
    required String director,
    required String producer,
    @JsonKey(name: "opening_crawl") required String openingCrawl,
  }) = _FilmRawInfo;

  factory FilmRawInfo.fromJson(Map<String, dynamic> json) =>
      _$FilmRawInfoFromJson(json);
}

@freezed
class FilmRaw with _$FilmRaw {
  const factory FilmRaw({
    required FilmRawDates dates,
    required FilmRawInfo info,
    required int id,
  }) = _FilmRaw;

  factory FilmRaw.fromJson(Map<String, dynamic> json) =>
      _$FilmRawFromJson(json);
}
