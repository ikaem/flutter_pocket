// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmRawDates _$$_FilmRawDatesFromJson(Map<String, dynamic> json) =>
    _$_FilmRawDates(
      created: json['created'] as String,
      edited: json['edited'] as String,
      released: json['release_date'] as String,
    );

Map<String, dynamic> _$$_FilmRawDatesToJson(_$_FilmRawDates instance) =>
    <String, dynamic>{
      'created': instance.created,
      'edited': instance.edited,
      'release_date': instance.released,
    };

_$_FilmRawInfo _$$_FilmRawInfoFromJson(Map<String, dynamic> json) =>
    _$_FilmRawInfo(
      title: json['title'] as String,
      director: json['director'] as String,
      producer: json['producer'] as String,
      openingCrawl: json['opening_crawl'] as String,
    );

Map<String, dynamic> _$$_FilmRawInfoToJson(_$_FilmRawInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'director': instance.director,
      'producer': instance.producer,
      'opening_crawl': instance.openingCrawl,
    };

_$_FilmRaw _$$_FilmRawFromJson(Map<String, dynamic> json) => _$_FilmRaw(
      dates: FilmRawDates.fromJson(json['dates'] as Map<String, dynamic>),
      info: FilmRawInfo.fromJson(json['info'] as Map<String, dynamic>),
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_FilmRawToJson(_$_FilmRaw instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'info': instance.info,
      'id': instance.id,
    };
