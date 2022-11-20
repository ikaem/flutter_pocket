// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDTO _$$_MovieDTOFromJson(Map<String, dynamic> json) => _$_MovieDTO(
      id: json['id'] as int,
      title: json['title'] as String,
      episodeId: json['episode_id'] as int,
      openingCrawl: json['openingCrawl'] as String,
      director: json['director'] as String,
      producer: json['producer'] as String,
      releaseDate: json['releaseDate'] as String,
      characters: (json['characters'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      planets:
          (json['planets'] as List<dynamic>).map((e) => e as String).toList(),
      starships:
          (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      created: json['created'] as String,
      edited: json['edited'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_MovieDTOToJson(_$_MovieDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'episode_id': instance.episodeId,
      'openingCrawl': instance.openingCrawl,
      'director': instance.director,
      'producer': instance.producer,
      'releaseDate': instance.releaseDate,
      'characters': instance.characters,
      'planets': instance.planets,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'species': instance.species,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
