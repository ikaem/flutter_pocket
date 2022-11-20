// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleAttributesDTO _$ArticleAttributesDTOFromJson(Map<String, dynamic> json) {
  return _ArticleAttribuesDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleAttributesDTO {
  String? get uri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "released_at")
  String? get releasedAt => throw _privateConstructorUsedError;
  bool? get free => throw _privateConstructorUsedError;
  String? get difficulty => throw _privateConstructorUsedError;
  @JsonKey(name: "content_type")
  String? get contentType => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "technology_triple_string")
  String? get technologyTripleString => throw _privateConstructorUsedError;
  @JsonKey(name: "contributor_string")
  String? get contributorString => throw _privateConstructorUsedError;
  String? get ordinal => throw _privateConstructorUsedError;
  bool? get professional => throw _privateConstructorUsedError;
  @JsonKey(name: "description_plain_text")
  String? get descriptionPlainText => throw _privateConstructorUsedError;
  @JsonKey(name: "video_identifier")
  int? get videoIdentifier => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_name")
  int? get parentName => throw _privateConstructorUsedError;
  bool? get accessible => throw _privateConstructorUsedError;
  @JsonKey(name: "card_artwork_url")
  String? get cartArtworkUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleAttributesDTOCopyWith<ArticleAttributesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleAttributesDTOCopyWith<$Res> {
  factory $ArticleAttributesDTOCopyWith(ArticleAttributesDTO value,
          $Res Function(ArticleAttributesDTO) then) =
      _$ArticleAttributesDTOCopyWithImpl<$Res, ArticleAttributesDTO>;
  @useResult
  $Res call(
      {String? uri,
      String? name,
      String? description,
      @JsonKey(name: "released_at") String? releasedAt,
      bool? free,
      String? difficulty,
      @JsonKey(name: "content_type") String? contentType,
      int duration,
      double? popularity,
      @JsonKey(name: "technology_triple_string") String? technologyTripleString,
      @JsonKey(name: "contributor_string") String? contributorString,
      String? ordinal,
      bool? professional,
      @JsonKey(name: "description_plain_text") String? descriptionPlainText,
      @JsonKey(name: "video_identifier") int? videoIdentifier,
      @JsonKey(name: "parent_name") int? parentName,
      bool? accessible,
      @JsonKey(name: "card_artwork_url") String? cartArtworkUrl});
}

/// @nodoc
class _$ArticleAttributesDTOCopyWithImpl<$Res,
        $Val extends ArticleAttributesDTO>
    implements $ArticleAttributesDTOCopyWith<$Res> {
  _$ArticleAttributesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? releasedAt = freezed,
    Object? free = freezed,
    Object? difficulty = freezed,
    Object? contentType = freezed,
    Object? duration = null,
    Object? popularity = freezed,
    Object? technologyTripleString = freezed,
    Object? contributorString = freezed,
    Object? ordinal = freezed,
    Object? professional = freezed,
    Object? descriptionPlainText = freezed,
    Object? videoIdentifier = freezed,
    Object? parentName = freezed,
    Object? accessible = freezed,
    Object? cartArtworkUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      free: freezed == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      technologyTripleString: freezed == technologyTripleString
          ? _value.technologyTripleString
          : technologyTripleString // ignore: cast_nullable_to_non_nullable
              as String?,
      contributorString: freezed == contributorString
          ? _value.contributorString
          : contributorString // ignore: cast_nullable_to_non_nullable
              as String?,
      ordinal: freezed == ordinal
          ? _value.ordinal
          : ordinal // ignore: cast_nullable_to_non_nullable
              as String?,
      professional: freezed == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as bool?,
      descriptionPlainText: freezed == descriptionPlainText
          ? _value.descriptionPlainText
          : descriptionPlainText // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIdentifier: freezed == videoIdentifier
          ? _value.videoIdentifier
          : videoIdentifier // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as int?,
      accessible: freezed == accessible
          ? _value.accessible
          : accessible // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartArtworkUrl: freezed == cartArtworkUrl
          ? _value.cartArtworkUrl
          : cartArtworkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleAttribuesDTOCopyWith<$Res>
    implements $ArticleAttributesDTOCopyWith<$Res> {
  factory _$$_ArticleAttribuesDTOCopyWith(_$_ArticleAttribuesDTO value,
          $Res Function(_$_ArticleAttribuesDTO) then) =
      __$$_ArticleAttribuesDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uri,
      String? name,
      String? description,
      @JsonKey(name: "released_at") String? releasedAt,
      bool? free,
      String? difficulty,
      @JsonKey(name: "content_type") String? contentType,
      int duration,
      double? popularity,
      @JsonKey(name: "technology_triple_string") String? technologyTripleString,
      @JsonKey(name: "contributor_string") String? contributorString,
      String? ordinal,
      bool? professional,
      @JsonKey(name: "description_plain_text") String? descriptionPlainText,
      @JsonKey(name: "video_identifier") int? videoIdentifier,
      @JsonKey(name: "parent_name") int? parentName,
      bool? accessible,
      @JsonKey(name: "card_artwork_url") String? cartArtworkUrl});
}

/// @nodoc
class __$$_ArticleAttribuesDTOCopyWithImpl<$Res>
    extends _$ArticleAttributesDTOCopyWithImpl<$Res, _$_ArticleAttribuesDTO>
    implements _$$_ArticleAttribuesDTOCopyWith<$Res> {
  __$$_ArticleAttribuesDTOCopyWithImpl(_$_ArticleAttribuesDTO _value,
      $Res Function(_$_ArticleAttribuesDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? releasedAt = freezed,
    Object? free = freezed,
    Object? difficulty = freezed,
    Object? contentType = freezed,
    Object? duration = null,
    Object? popularity = freezed,
    Object? technologyTripleString = freezed,
    Object? contributorString = freezed,
    Object? ordinal = freezed,
    Object? professional = freezed,
    Object? descriptionPlainText = freezed,
    Object? videoIdentifier = freezed,
    Object? parentName = freezed,
    Object? accessible = freezed,
    Object? cartArtworkUrl = freezed,
  }) {
    return _then(_$_ArticleAttribuesDTO(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      releasedAt: freezed == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      free: freezed == free
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as bool?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      technologyTripleString: freezed == technologyTripleString
          ? _value.technologyTripleString
          : technologyTripleString // ignore: cast_nullable_to_non_nullable
              as String?,
      contributorString: freezed == contributorString
          ? _value.contributorString
          : contributorString // ignore: cast_nullable_to_non_nullable
              as String?,
      ordinal: freezed == ordinal
          ? _value.ordinal
          : ordinal // ignore: cast_nullable_to_non_nullable
              as String?,
      professional: freezed == professional
          ? _value.professional
          : professional // ignore: cast_nullable_to_non_nullable
              as bool?,
      descriptionPlainText: freezed == descriptionPlainText
          ? _value.descriptionPlainText
          : descriptionPlainText // ignore: cast_nullable_to_non_nullable
              as String?,
      videoIdentifier: freezed == videoIdentifier
          ? _value.videoIdentifier
          : videoIdentifier // ignore: cast_nullable_to_non_nullable
              as int?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as int?,
      accessible: freezed == accessible
          ? _value.accessible
          : accessible // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartArtworkUrl: freezed == cartArtworkUrl
          ? _value.cartArtworkUrl
          : cartArtworkUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleAttribuesDTO implements _ArticleAttribuesDTO {
  const _$_ArticleAttribuesDTO(
      {required this.uri,
      required this.name,
      required this.description,
      @JsonKey(name: "released_at")
          required this.releasedAt,
      required this.free,
      required this.difficulty,
      @JsonKey(name: "content_type")
          required this.contentType,
      required this.duration,
      required this.popularity,
      @JsonKey(name: "technology_triple_string")
          required this.technologyTripleString,
      @JsonKey(name: "contributor_string")
          required this.contributorString,
      required this.ordinal,
      required this.professional,
      @JsonKey(name: "description_plain_text")
          required this.descriptionPlainText,
      @JsonKey(name: "video_identifier")
          required this.videoIdentifier,
      @JsonKey(name: "parent_name")
          required this.parentName,
      required this.accessible,
      @JsonKey(name: "card_artwork_url")
          required this.cartArtworkUrl});

  factory _$_ArticleAttribuesDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleAttribuesDTOFromJson(json);

  @override
  final String? uri;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: "released_at")
  final String? releasedAt;
  @override
  final bool? free;
  @override
  final String? difficulty;
  @override
  @JsonKey(name: "content_type")
  final String? contentType;
  @override
  final int duration;
  @override
  final double? popularity;
  @override
  @JsonKey(name: "technology_triple_string")
  final String? technologyTripleString;
  @override
  @JsonKey(name: "contributor_string")
  final String? contributorString;
  @override
  final String? ordinal;
  @override
  final bool? professional;
  @override
  @JsonKey(name: "description_plain_text")
  final String? descriptionPlainText;
  @override
  @JsonKey(name: "video_identifier")
  final int? videoIdentifier;
  @override
  @JsonKey(name: "parent_name")
  final int? parentName;
  @override
  final bool? accessible;
  @override
  @JsonKey(name: "card_artwork_url")
  final String? cartArtworkUrl;

  @override
  String toString() {
    return 'ArticleAttributesDTO(uri: $uri, name: $name, description: $description, releasedAt: $releasedAt, free: $free, difficulty: $difficulty, contentType: $contentType, duration: $duration, popularity: $popularity, technologyTripleString: $technologyTripleString, contributorString: $contributorString, ordinal: $ordinal, professional: $professional, descriptionPlainText: $descriptionPlainText, videoIdentifier: $videoIdentifier, parentName: $parentName, accessible: $accessible, cartArtworkUrl: $cartArtworkUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleAttribuesDTO &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.free, free) || other.free == free) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.technologyTripleString, technologyTripleString) ||
                other.technologyTripleString == technologyTripleString) &&
            (identical(other.contributorString, contributorString) ||
                other.contributorString == contributorString) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.professional, professional) ||
                other.professional == professional) &&
            (identical(other.descriptionPlainText, descriptionPlainText) ||
                other.descriptionPlainText == descriptionPlainText) &&
            (identical(other.videoIdentifier, videoIdentifier) ||
                other.videoIdentifier == videoIdentifier) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.accessible, accessible) ||
                other.accessible == accessible) &&
            (identical(other.cartArtworkUrl, cartArtworkUrl) ||
                other.cartArtworkUrl == cartArtworkUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uri,
      name,
      description,
      releasedAt,
      free,
      difficulty,
      contentType,
      duration,
      popularity,
      technologyTripleString,
      contributorString,
      ordinal,
      professional,
      descriptionPlainText,
      videoIdentifier,
      parentName,
      accessible,
      cartArtworkUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleAttribuesDTOCopyWith<_$_ArticleAttribuesDTO> get copyWith =>
      __$$_ArticleAttribuesDTOCopyWithImpl<_$_ArticleAttribuesDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleAttribuesDTOToJson(
      this,
    );
  }
}

abstract class _ArticleAttribuesDTO implements ArticleAttributesDTO {
  const factory _ArticleAttribuesDTO(
      {required final String? uri,
      required final String? name,
      required final String? description,
      @JsonKey(name: "released_at")
          required final String? releasedAt,
      required final bool? free,
      required final String? difficulty,
      @JsonKey(name: "content_type")
          required final String? contentType,
      required final int duration,
      required final double? popularity,
      @JsonKey(name: "technology_triple_string")
          required final String? technologyTripleString,
      @JsonKey(name: "contributor_string")
          required final String? contributorString,
      required final String? ordinal,
      required final bool? professional,
      @JsonKey(name: "description_plain_text")
          required final String? descriptionPlainText,
      @JsonKey(name: "video_identifier")
          required final int? videoIdentifier,
      @JsonKey(name: "parent_name")
          required final int? parentName,
      required final bool? accessible,
      @JsonKey(name: "card_artwork_url")
          required final String? cartArtworkUrl}) = _$_ArticleAttribuesDTO;

  factory _ArticleAttribuesDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleAttribuesDTO.fromJson;

  @override
  String? get uri;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: "released_at")
  String? get releasedAt;
  @override
  bool? get free;
  @override
  String? get difficulty;
  @override
  @JsonKey(name: "content_type")
  String? get contentType;
  @override
  int get duration;
  @override
  double? get popularity;
  @override
  @JsonKey(name: "technology_triple_string")
  String? get technologyTripleString;
  @override
  @JsonKey(name: "contributor_string")
  String? get contributorString;
  @override
  String? get ordinal;
  @override
  bool? get professional;
  @override
  @JsonKey(name: "description_plain_text")
  String? get descriptionPlainText;
  @override
  @JsonKey(name: "video_identifier")
  int? get videoIdentifier;
  @override
  @JsonKey(name: "parent_name")
  int? get parentName;
  @override
  bool? get accessible;
  @override
  @JsonKey(name: "card_artwork_url")
  String? get cartArtworkUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleAttribuesDTOCopyWith<_$_ArticleAttribuesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleLinksDTO _$ArticleLinksDTOFromJson(Map<String, dynamic> json) {
  return _ArticleLinksDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleLinksDTO {
  String? get self => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleLinksDTOCopyWith<ArticleLinksDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleLinksDTOCopyWith<$Res> {
  factory $ArticleLinksDTOCopyWith(
          ArticleLinksDTO value, $Res Function(ArticleLinksDTO) then) =
      _$ArticleLinksDTOCopyWithImpl<$Res, ArticleLinksDTO>;
  @useResult
  $Res call({String? self});
}

/// @nodoc
class _$ArticleLinksDTOCopyWithImpl<$Res, $Val extends ArticleLinksDTO>
    implements $ArticleLinksDTOCopyWith<$Res> {
  _$ArticleLinksDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleLinksDTOCopyWith<$Res>
    implements $ArticleLinksDTOCopyWith<$Res> {
  factory _$$_ArticleLinksDTOCopyWith(
          _$_ArticleLinksDTO value, $Res Function(_$_ArticleLinksDTO) then) =
      __$$_ArticleLinksDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? self});
}

/// @nodoc
class __$$_ArticleLinksDTOCopyWithImpl<$Res>
    extends _$ArticleLinksDTOCopyWithImpl<$Res, _$_ArticleLinksDTO>
    implements _$$_ArticleLinksDTOCopyWith<$Res> {
  __$$_ArticleLinksDTOCopyWithImpl(
      _$_ArticleLinksDTO _value, $Res Function(_$_ArticleLinksDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_$_ArticleLinksDTO(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleLinksDTO implements _ArticleLinksDTO {
  const _$_ArticleLinksDTO({required this.self});

  factory _$_ArticleLinksDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleLinksDTOFromJson(json);

  @override
  final String? self;

  @override
  String toString() {
    return 'ArticleLinksDTO(self: $self)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleLinksDTO &&
            (identical(other.self, self) || other.self == self));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleLinksDTOCopyWith<_$_ArticleLinksDTO> get copyWith =>
      __$$_ArticleLinksDTOCopyWithImpl<_$_ArticleLinksDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleLinksDTOToJson(
      this,
    );
  }
}

abstract class _ArticleLinksDTO implements ArticleLinksDTO {
  const factory _ArticleLinksDTO({required final String? self}) =
      _$_ArticleLinksDTO;

  factory _ArticleLinksDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleLinksDTO.fromJson;

  @override
  String? get self;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleLinksDTOCopyWith<_$_ArticleLinksDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ArticleDTO _$ArticleDTOFromJson(Map<String, dynamic> json) {
  return _ArticleDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticleDTO {
  String get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  ArticleAttributesDTO? get attributes => throw _privateConstructorUsedError;
  ArticleLinksDTO? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDTOCopyWith<ArticleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDTOCopyWith<$Res> {
  factory $ArticleDTOCopyWith(
          ArticleDTO value, $Res Function(ArticleDTO) then) =
      _$ArticleDTOCopyWithImpl<$Res, ArticleDTO>;
  @useResult
  $Res call(
      {String id,
      String? type,
      ArticleAttributesDTO? attributes,
      ArticleLinksDTO? links});

  $ArticleAttributesDTOCopyWith<$Res>? get attributes;
  $ArticleLinksDTOCopyWith<$Res>? get links;
}

/// @nodoc
class _$ArticleDTOCopyWithImpl<$Res, $Val extends ArticleDTO>
    implements $ArticleDTOCopyWith<$Res> {
  _$ArticleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? attributes = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ArticleAttributesDTO?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ArticleLinksDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleAttributesDTOCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $ArticleAttributesDTOCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleLinksDTOCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $ArticleLinksDTOCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleDTOCopyWith<$Res>
    implements $ArticleDTOCopyWith<$Res> {
  factory _$$_ArticleDTOCopyWith(
          _$_ArticleDTO value, $Res Function(_$_ArticleDTO) then) =
      __$$_ArticleDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? type,
      ArticleAttributesDTO? attributes,
      ArticleLinksDTO? links});

  @override
  $ArticleAttributesDTOCopyWith<$Res>? get attributes;
  @override
  $ArticleLinksDTOCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_ArticleDTOCopyWithImpl<$Res>
    extends _$ArticleDTOCopyWithImpl<$Res, _$_ArticleDTO>
    implements _$$_ArticleDTOCopyWith<$Res> {
  __$$_ArticleDTOCopyWithImpl(
      _$_ArticleDTO _value, $Res Function(_$_ArticleDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? attributes = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_ArticleDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ArticleAttributesDTO?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as ArticleLinksDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleDTO implements _ArticleDTO {
  const _$_ArticleDTO(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.links});

  factory _$_ArticleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleDTOFromJson(json);

  @override
  final String id;
  @override
  final String? type;
  @override
  final ArticleAttributesDTO? attributes;
  @override
  final ArticleLinksDTO? links;

  @override
  String toString() {
    return 'ArticleDTO(id: $id, type: $type, attributes: $attributes, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleDTOCopyWith<_$_ArticleDTO> get copyWith =>
      __$$_ArticleDTOCopyWithImpl<_$_ArticleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleDTOToJson(
      this,
    );
  }
}

abstract class _ArticleDTO implements ArticleDTO {
  const factory _ArticleDTO(
      {required final String id,
      required final String? type,
      required final ArticleAttributesDTO? attributes,
      required final ArticleLinksDTO? links}) = _$_ArticleDTO;

  factory _ArticleDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticleDTO.fromJson;

  @override
  String get id;
  @override
  String? get type;
  @override
  ArticleAttributesDTO? get attributes;
  @override
  ArticleLinksDTO? get links;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDTOCopyWith<_$_ArticleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
