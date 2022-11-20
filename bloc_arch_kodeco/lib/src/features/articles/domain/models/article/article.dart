import 'package:bloc_arch_kodeco/src/features/articles/data/dtos/article_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "article.freezed.dart";

@freezed
class ArticleAttributes with _$ArticleAttributes {
  const factory ArticleAttributes({
    required String? uri,
    required String? name,
    required String? description,
    required String? releasedAt,
  }) = _ArticleAttributes;

  factory ArticleAttributes.fromDTO(ArticleAttributesDTO dto) {
    return ArticleAttributes(
      uri: dto.uri,
      name: dto.name,
      description: dto.description,
      releasedAt: dto.releasedAt,
    );
  }
}

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String? type,
    required ArticleAttributes? attributes,
    required String? selfLink,
  }) = _Article;

  factory Article.fromDTO(ArticleDTO dto) {
    final dtoAttributes = dto.attributes;
    final attributes =
        dtoAttributes == null ? null : ArticleAttributes.fromDTO(dtoAttributes);

    return Article(
      id: dto.id,
      type: dto.type,
      attributes: attributes,
      selfLink: dto.links?.self,
    );
  }
}
