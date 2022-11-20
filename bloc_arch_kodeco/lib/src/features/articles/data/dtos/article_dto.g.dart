// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleAttribuesDTO _$$_ArticleAttribuesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleAttribuesDTO(
      uri: json['uri'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      releasedAt: json['released_at'] as String?,
      free: json['free'] as bool?,
      difficulty: json['difficulty'] as String?,
      contentType: json['content_type'] as String?,
      duration: json['duration'] as int,
      popularity: (json['popularity'] as num?)?.toDouble(),
      technologyTripleString: json['technology_triple_string'] as String?,
      contributorString: json['contributor_string'] as String?,
      ordinal: json['ordinal'] as String?,
      professional: json['professional'] as bool?,
      descriptionPlainText: json['description_plain_text'] as String?,
      videoIdentifier: json['video_identifier'] as int?,
      parentName: json['parent_name'] as int?,
      accessible: json['accessible'] as bool?,
      cartArtworkUrl: json['card_artwork_url'] as String?,
    );

Map<String, dynamic> _$$_ArticleAttribuesDTOToJson(
        _$_ArticleAttribuesDTO instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'name': instance.name,
      'description': instance.description,
      'released_at': instance.releasedAt,
      'free': instance.free,
      'difficulty': instance.difficulty,
      'content_type': instance.contentType,
      'duration': instance.duration,
      'popularity': instance.popularity,
      'technology_triple_string': instance.technologyTripleString,
      'contributor_string': instance.contributorString,
      'ordinal': instance.ordinal,
      'professional': instance.professional,
      'description_plain_text': instance.descriptionPlainText,
      'video_identifier': instance.videoIdentifier,
      'parent_name': instance.parentName,
      'accessible': instance.accessible,
      'card_artwork_url': instance.cartArtworkUrl,
    };

_$_ArticleLinksDTO _$$_ArticleLinksDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticleLinksDTO(
      self: json['self'] as String?,
    );

Map<String, dynamic> _$$_ArticleLinksDTOToJson(_$_ArticleLinksDTO instance) =>
    <String, dynamic>{
      'self': instance.self,
    };

_$_ArticleDTO _$$_ArticleDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticleDTO(
      id: json['id'] as String,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : ArticleAttributesDTO.fromJson(
              json['attributes'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : ArticleLinksDTO.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArticleDTOToJson(_$_ArticleDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'links': instance.links,
    };
