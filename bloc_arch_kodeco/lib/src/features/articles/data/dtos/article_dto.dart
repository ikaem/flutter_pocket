import 'package:freezed_annotation/freezed_annotation.dart';

part "article_dto.freezed.dart";
part "article_dto.g.dart";

@freezed
class ArticleAttributesDTO with _$ArticleAttributesDTO {
  const factory ArticleAttributesDTO({
    required String? uri,
    required String? name,
    required String? description,
    @JsonKey(name: "released_at") required String? releasedAt,
    required bool? free,
    required String? difficulty,
    @JsonKey(name: "content_type") required String? contentType,
    required int duration,
    required double? popularity,
    @JsonKey(name: "technology_triple_string")
        required String? technologyTripleString,
    @JsonKey(name: "contributor_string") required String? contributorString,
    required String? ordinal,
    required bool? professional,
    @JsonKey(name: "description_plain_text")
        required String? descriptionPlainText,
    @JsonKey(name: "video_identifier") required int? videoIdentifier,
    @JsonKey(name: "parent_name") required int? parentName,
    required bool? accessible,
    @JsonKey(name: "card_artwork_url") required String? cartArtworkUrl,
  }) = _ArticleAttribuesDTO;

  factory ArticleAttributesDTO.fromJson(Map<String, dynamic> map) =>
      _$ArticleAttributesDTOFromJson(map);
}

@freezed
class ArticleLinksDTO with _$ArticleLinksDTO {
  const factory ArticleLinksDTO({
    required String? self,
  }) = _ArticleLinksDTO;

  // so this will hopefully look for for self field
  factory ArticleLinksDTO.fromJson(Map<String, dynamic> map) =>
      _$ArticleLinksDTOFromJson(map);
}

@freezed
class ArticleDTO with _$ArticleDTO {
  const factory ArticleDTO({
    required String id,
    required String? type,
    required ArticleAttributesDTO? attributes,
    required ArticleLinksDTO? links,
  }) = _ArticleDTO;

  factory ArticleDTO.fromJson(Map<String, dynamic> map) =>
      _$ArticleDTOFromJson(map);
}
