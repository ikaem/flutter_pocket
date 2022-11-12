// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmRaw _$FilmRawFromJson(Map<String, dynamic> json) {
  return _FilmRaw.fromJson(json);
}

/// @nodoc
mixin _$FilmRaw {
// required FilmRawDates dates,
// required FilmRawInfo info,
  String get created => throw _privateConstructorUsedError;
  String get edited => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get released => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_crawl")
  String get openingCrawl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmRawCopyWith<FilmRaw> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmRawCopyWith<$Res> {
  factory $FilmRawCopyWith(FilmRaw value, $Res Function(FilmRaw) then) =
      _$FilmRawCopyWithImpl<$Res, FilmRaw>;
  @useResult
  $Res call(
      {String created,
      String edited,
      @JsonKey(name: "release_date") String released,
      String title,
      String director,
      String producer,
      @JsonKey(name: "opening_crawl") String openingCrawl});
}

/// @nodoc
class _$FilmRawCopyWithImpl<$Res, $Val extends FilmRaw>
    implements $FilmRawCopyWith<$Res> {
  _$FilmRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? edited = null,
    Object? released = null,
    Object? title = null,
    Object? director = null,
    Object? producer = null,
    Object? openingCrawl = null,
  }) {
    return _then(_value.copyWith(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      edited: null == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      openingCrawl: null == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmRawCopyWith<$Res> implements $FilmRawCopyWith<$Res> {
  factory _$$_FilmRawCopyWith(
          _$_FilmRaw value, $Res Function(_$_FilmRaw) then) =
      __$$_FilmRawCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String created,
      String edited,
      @JsonKey(name: "release_date") String released,
      String title,
      String director,
      String producer,
      @JsonKey(name: "opening_crawl") String openingCrawl});
}

/// @nodoc
class __$$_FilmRawCopyWithImpl<$Res>
    extends _$FilmRawCopyWithImpl<$Res, _$_FilmRaw>
    implements _$$_FilmRawCopyWith<$Res> {
  __$$_FilmRawCopyWithImpl(_$_FilmRaw _value, $Res Function(_$_FilmRaw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? edited = null,
    Object? released = null,
    Object? title = null,
    Object? director = null,
    Object? producer = null,
    Object? openingCrawl = null,
  }) {
    return _then(_$_FilmRaw(
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      edited: null == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
      openingCrawl: null == openingCrawl
          ? _value.openingCrawl
          : openingCrawl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmRaw implements _FilmRaw {
  const _$_FilmRaw(
      {required this.created,
      required this.edited,
      @JsonKey(name: "release_date") required this.released,
      required this.title,
      required this.director,
      required this.producer,
      @JsonKey(name: "opening_crawl") required this.openingCrawl});

  factory _$_FilmRaw.fromJson(Map<String, dynamic> json) =>
      _$$_FilmRawFromJson(json);

// required FilmRawDates dates,
// required FilmRawInfo info,
  @override
  final String created;
  @override
  final String edited;
  @override
  @JsonKey(name: "release_date")
  final String released;
  @override
  final String title;
  @override
  final String director;
  @override
  final String producer;
  @override
  @JsonKey(name: "opening_crawl")
  final String openingCrawl;

  @override
  String toString() {
    return 'FilmRaw(created: $created, edited: $edited, released: $released, title: $title, director: $director, producer: $producer, openingCrawl: $openingCrawl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmRaw &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.edited, edited) || other.edited == edited) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.openingCrawl, openingCrawl) ||
                other.openingCrawl == openingCrawl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, created, edited, released, title,
      director, producer, openingCrawl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmRawCopyWith<_$_FilmRaw> get copyWith =>
      __$$_FilmRawCopyWithImpl<_$_FilmRaw>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmRawToJson(
      this,
    );
  }
}

abstract class _FilmRaw implements FilmRaw {
  const factory _FilmRaw(
          {required final String created,
          required final String edited,
          @JsonKey(name: "release_date") required final String released,
          required final String title,
          required final String director,
          required final String producer,
          @JsonKey(name: "opening_crawl") required final String openingCrawl}) =
      _$_FilmRaw;

  factory _FilmRaw.fromJson(Map<String, dynamic> json) = _$_FilmRaw.fromJson;

  @override // required FilmRawDates dates,
// required FilmRawInfo info,
  String get created;
  @override
  String get edited;
  @override
  @JsonKey(name: "release_date")
  String get released;
  @override
  String get title;
  @override
  String get director;
  @override
  String get producer;
  @override
  @JsonKey(name: "opening_crawl")
  String get openingCrawl;
  @override
  @JsonKey(ignore: true)
  _$$_FilmRawCopyWith<_$_FilmRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
