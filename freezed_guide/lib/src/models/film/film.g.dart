// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Film _$$_FilmFromJson(Map<String, dynamic> json) => _$_Film(
      title: json['title'] as String,
      director: json['director'] as String,
      year: json['release_date'] as String,
    );

Map<String, dynamic> _$$_FilmToJson(_$_Film instance) => <String, dynamic>{
      'title': instance.title,
      'director': instance.director,
      'release_date': instance.year,
    };
