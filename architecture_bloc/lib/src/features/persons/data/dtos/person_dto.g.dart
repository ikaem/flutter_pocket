// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonDTO _$$_PersonDTOFromJson(Map<String, dynamic> json) => _$_PersonDTO(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as String,
      mass: json['mass'] as String,
      hairColor: json['hair_color'] as String,
      skinColor: json['skinColor'] as String,
      eyeColor: json['eyeColor'] as String,
      birthColor: json['birthColor'] as String,
      gender: json['gender'] as String,
      homeworld: json['homeworld'] as String,
      films: (json['films'] as List<dynamic>).map((e) => e as String).toList(),
      species:
          (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      vehicles:
          (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      starships:
          (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      created: json['created'] as String,
      edited: json['edited'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PersonDTOToJson(_$_PersonDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'mass': instance.mass,
      'hair_color': instance.hairColor,
      'skinColor': instance.skinColor,
      'eyeColor': instance.eyeColor,
      'birthColor': instance.birthColor,
      'gender': instance.gender,
      'homeworld': instance.homeworld,
      'films': instance.films,
      'species': instance.species,
      'vehicles': instance.vehicles,
      'starships': instance.starships,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
