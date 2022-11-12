// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmRaw _$$_FilmRawFromJson(Map<String, dynamic> json) => _$_FilmRaw(
      created: json['created'] as String,
      edited: json['edited'] as String,
      released: json['release_date'] as String,
      title: json['title'] as String,
      director: json['director'] as String,
      producer: json['producer'] as String,
      openingCrawl: json['opening_crawl'] as String,
    );

Map<String, dynamic> _$$_FilmRawToJson(_$_FilmRaw instance) =>
    <String, dynamic>{
      'created': instance.created,
      'edited': instance.edited,
      'release_date': instance.released,
      'title': instance.title,
      'director': instance.director,
      'producer': instance.producer,
      'opening_crawl': instance.openingCrawl,
    };
