// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleAttributes {
  String? get uri => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get releasedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleAttributesCopyWith<ArticleAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleAttributesCopyWith<$Res> {
  factory $ArticleAttributesCopyWith(
          ArticleAttributes value, $Res Function(ArticleAttributes) then) =
      _$ArticleAttributesCopyWithImpl<$Res, ArticleAttributes>;
  @useResult
  $Res call(
      {String? uri, String? name, String? description, String? releasedAt});
}

/// @nodoc
class _$ArticleAttributesCopyWithImpl<$Res, $Val extends ArticleAttributes>
    implements $ArticleAttributesCopyWith<$Res> {
  _$ArticleAttributesCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleAttributesCopyWith<$Res>
    implements $ArticleAttributesCopyWith<$Res> {
  factory _$$_ArticleAttributesCopyWith(_$_ArticleAttributes value,
          $Res Function(_$_ArticleAttributes) then) =
      __$$_ArticleAttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? uri, String? name, String? description, String? releasedAt});
}

/// @nodoc
class __$$_ArticleAttributesCopyWithImpl<$Res>
    extends _$ArticleAttributesCopyWithImpl<$Res, _$_ArticleAttributes>
    implements _$$_ArticleAttributesCopyWith<$Res> {
  __$$_ArticleAttributesCopyWithImpl(
      _$_ArticleAttributes _value, $Res Function(_$_ArticleAttributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? releasedAt = freezed,
  }) {
    return _then(_$_ArticleAttributes(
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
    ));
  }
}

/// @nodoc

class _$_ArticleAttributes implements _ArticleAttributes {
  const _$_ArticleAttributes(
      {required this.uri,
      required this.name,
      required this.description,
      required this.releasedAt});

  @override
  final String? uri;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? releasedAt;

  @override
  String toString() {
    return 'ArticleAttributes(uri: $uri, name: $name, description: $description, releasedAt: $releasedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleAttributes &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uri, name, description, releasedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleAttributesCopyWith<_$_ArticleAttributes> get copyWith =>
      __$$_ArticleAttributesCopyWithImpl<_$_ArticleAttributes>(
          this, _$identity);
}

abstract class _ArticleAttributes implements ArticleAttributes {
  const factory _ArticleAttributes(
      {required final String? uri,
      required final String? name,
      required final String? description,
      required final String? releasedAt}) = _$_ArticleAttributes;

  @override
  String? get uri;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get releasedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleAttributesCopyWith<_$_ArticleAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  ArticleAttributes? get attributes => throw _privateConstructorUsedError;
  String? get selfLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String id,
      String? type,
      ArticleAttributes? attributes,
      String? selfLink});

  $ArticleAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

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
    Object? selfLink = freezed,
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
              as ArticleAttributes?,
      selfLink: freezed == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleAttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $ArticleAttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$_ArticleCopyWith(
          _$_Article value, $Res Function(_$_Article) then) =
      __$$_ArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? type,
      ArticleAttributes? attributes,
      String? selfLink});

  @override
  $ArticleAttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$_ArticleCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$_Article>
    implements _$$_ArticleCopyWith<$Res> {
  __$$_ArticleCopyWithImpl(_$_Article _value, $Res Function(_$_Article) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? attributes = freezed,
    Object? selfLink = freezed,
  }) {
    return _then(_$_Article(
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
              as ArticleAttributes?,
      selfLink: freezed == selfLink
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Article implements _Article {
  const _$_Article(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.selfLink});

  @override
  final String id;
  @override
  final String? type;
  @override
  final ArticleAttributes? attributes;
  @override
  final String? selfLink;

  @override
  String toString() {
    return 'Article(id: $id, type: $type, attributes: $attributes, selfLink: $selfLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Article &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.selfLink, selfLink) ||
                other.selfLink == selfLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, attributes, selfLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      __$$_ArticleCopyWithImpl<_$_Article>(this, _$identity);
}

abstract class _Article implements Article {
  const factory _Article(
      {required final String id,
      required final String? type,
      required final ArticleAttributes? attributes,
      required final String? selfLink}) = _$_Article;

  @override
  String get id;
  @override
  String? get type;
  @override
  ArticleAttributes? get attributes;
  @override
  String? get selfLink;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleCopyWith<_$_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
