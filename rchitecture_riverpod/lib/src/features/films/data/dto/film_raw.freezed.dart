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

FilmRawDates _$FilmRawDatesFromJson(Map<String, dynamic> json) {
  return _FilmRawDates.fromJson(json);
}

/// @nodoc
mixin _$FilmRawDates {
  String get created => throw _privateConstructorUsedError;
  String get edited => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get released => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmRawDatesCopyWith<FilmRawDates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmRawDatesCopyWith<$Res> {
  factory $FilmRawDatesCopyWith(
          FilmRawDates value, $Res Function(FilmRawDates) then) =
      _$FilmRawDatesCopyWithImpl<$Res, FilmRawDates>;
  @useResult
  $Res call(
      {String created,
      String edited,
      @JsonKey(name: "release_date") String released});
}

/// @nodoc
class _$FilmRawDatesCopyWithImpl<$Res, $Val extends FilmRawDates>
    implements $FilmRawDatesCopyWith<$Res> {
  _$FilmRawDatesCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmRawDatesCopyWith<$Res>
    implements $FilmRawDatesCopyWith<$Res> {
  factory _$$_FilmRawDatesCopyWith(
          _$_FilmRawDates value, $Res Function(_$_FilmRawDates) then) =
      __$$_FilmRawDatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String created,
      String edited,
      @JsonKey(name: "release_date") String released});
}

/// @nodoc
class __$$_FilmRawDatesCopyWithImpl<$Res>
    extends _$FilmRawDatesCopyWithImpl<$Res, _$_FilmRawDates>
    implements _$$_FilmRawDatesCopyWith<$Res> {
  __$$_FilmRawDatesCopyWithImpl(
      _$_FilmRawDates _value, $Res Function(_$_FilmRawDates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = null,
    Object? edited = null,
    Object? released = null,
  }) {
    return _then(_$_FilmRawDates(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmRawDates implements _FilmRawDates {
  const _$_FilmRawDates(
      {required this.created,
      required this.edited,
      @JsonKey(name: "release_date") required this.released});

  factory _$_FilmRawDates.fromJson(Map<String, dynamic> json) =>
      _$$_FilmRawDatesFromJson(json);

  @override
  final String created;
  @override
  final String edited;
  @override
  @JsonKey(name: "release_date")
  final String released;

  @override
  String toString() {
    return 'FilmRawDates(created: $created, edited: $edited, released: $released)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmRawDates &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.edited, edited) || other.edited == edited) &&
            (identical(other.released, released) ||
                other.released == released));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, created, edited, released);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmRawDatesCopyWith<_$_FilmRawDates> get copyWith =>
      __$$_FilmRawDatesCopyWithImpl<_$_FilmRawDates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmRawDatesToJson(
      this,
    );
  }
}

abstract class _FilmRawDates implements FilmRawDates {
  const factory _FilmRawDates(
          {required final String created,
          required final String edited,
          @JsonKey(name: "release_date") required final String released}) =
      _$_FilmRawDates;

  factory _FilmRawDates.fromJson(Map<String, dynamic> json) =
      _$_FilmRawDates.fromJson;

  @override
  String get created;
  @override
  String get edited;
  @override
  @JsonKey(name: "release_date")
  String get released;
  @override
  @JsonKey(ignore: true)
  _$$_FilmRawDatesCopyWith<_$_FilmRawDates> get copyWith =>
      throw _privateConstructorUsedError;
}

FilmRawInfo _$FilmRawInfoFromJson(Map<String, dynamic> json) {
  return _FilmRawInfo.fromJson(json);
}

/// @nodoc
mixin _$FilmRawInfo {
  String get title => throw _privateConstructorUsedError;
  String get director => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;
  @JsonKey(name: "opening_crawl")
  String get openingCrawl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmRawInfoCopyWith<FilmRawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmRawInfoCopyWith<$Res> {
  factory $FilmRawInfoCopyWith(
          FilmRawInfo value, $Res Function(FilmRawInfo) then) =
      _$FilmRawInfoCopyWithImpl<$Res, FilmRawInfo>;
  @useResult
  $Res call(
      {String title,
      String director,
      String producer,
      @JsonKey(name: "opening_crawl") String openingCrawl});
}

/// @nodoc
class _$FilmRawInfoCopyWithImpl<$Res, $Val extends FilmRawInfo>
    implements $FilmRawInfoCopyWith<$Res> {
  _$FilmRawInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? producer = null,
    Object? openingCrawl = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_FilmRawInfoCopyWith<$Res>
    implements $FilmRawInfoCopyWith<$Res> {
  factory _$$_FilmRawInfoCopyWith(
          _$_FilmRawInfo value, $Res Function(_$_FilmRawInfo) then) =
      __$$_FilmRawInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String director,
      String producer,
      @JsonKey(name: "opening_crawl") String openingCrawl});
}

/// @nodoc
class __$$_FilmRawInfoCopyWithImpl<$Res>
    extends _$FilmRawInfoCopyWithImpl<$Res, _$_FilmRawInfo>
    implements _$$_FilmRawInfoCopyWith<$Res> {
  __$$_FilmRawInfoCopyWithImpl(
      _$_FilmRawInfo _value, $Res Function(_$_FilmRawInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? producer = null,
    Object? openingCrawl = null,
  }) {
    return _then(_$_FilmRawInfo(
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
class _$_FilmRawInfo implements _FilmRawInfo {
  const _$_FilmRawInfo(
      {required this.title,
      required this.director,
      required this.producer,
      @JsonKey(name: "opening_crawl") required this.openingCrawl});

  factory _$_FilmRawInfo.fromJson(Map<String, dynamic> json) =>
      _$$_FilmRawInfoFromJson(json);

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
    return 'FilmRawInfo(title: $title, director: $director, producer: $producer, openingCrawl: $openingCrawl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmRawInfo &&
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
  int get hashCode =>
      Object.hash(runtimeType, title, director, producer, openingCrawl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmRawInfoCopyWith<_$_FilmRawInfo> get copyWith =>
      __$$_FilmRawInfoCopyWithImpl<_$_FilmRawInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmRawInfoToJson(
      this,
    );
  }
}

abstract class _FilmRawInfo implements FilmRawInfo {
  const factory _FilmRawInfo(
          {required final String title,
          required final String director,
          required final String producer,
          @JsonKey(name: "opening_crawl") required final String openingCrawl}) =
      _$_FilmRawInfo;

  factory _FilmRawInfo.fromJson(Map<String, dynamic> json) =
      _$_FilmRawInfo.fromJson;

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
  _$$_FilmRawInfoCopyWith<_$_FilmRawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

FilmRaw _$FilmRawFromJson(Map<String, dynamic> json) {
  return _FilmRaw.fromJson(json);
}

/// @nodoc
mixin _$FilmRaw {
  FilmRawDates get dates => throw _privateConstructorUsedError;
  FilmRawInfo get info => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmRawCopyWith<FilmRaw> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmRawCopyWith<$Res> {
  factory $FilmRawCopyWith(FilmRaw value, $Res Function(FilmRaw) then) =
      _$FilmRawCopyWithImpl<$Res, FilmRaw>;
  @useResult
  $Res call({FilmRawDates dates, FilmRawInfo info, int id});

  $FilmRawDatesCopyWith<$Res> get dates;
  $FilmRawInfoCopyWith<$Res> get info;
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
    Object? dates = null,
    Object? info = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as FilmRawDates,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as FilmRawInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmRawDatesCopyWith<$Res> get dates {
    return $FilmRawDatesCopyWith<$Res>(_value.dates, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmRawInfoCopyWith<$Res> get info {
    return $FilmRawInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FilmRawCopyWith<$Res> implements $FilmRawCopyWith<$Res> {
  factory _$$_FilmRawCopyWith(
          _$_FilmRaw value, $Res Function(_$_FilmRaw) then) =
      __$$_FilmRawCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FilmRawDates dates, FilmRawInfo info, int id});

  @override
  $FilmRawDatesCopyWith<$Res> get dates;
  @override
  $FilmRawInfoCopyWith<$Res> get info;
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
    Object? dates = null,
    Object? info = null,
    Object? id = null,
  }) {
    return _then(_$_FilmRaw(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as FilmRawDates,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as FilmRawInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmRaw implements _FilmRaw {
  const _$_FilmRaw({required this.dates, required this.info, required this.id});

  factory _$_FilmRaw.fromJson(Map<String, dynamic> json) =>
      _$$_FilmRawFromJson(json);

  @override
  final FilmRawDates dates;
  @override
  final FilmRawInfo info;
  @override
  final int id;

  @override
  String toString() {
    return 'FilmRaw(dates: $dates, info: $info, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmRaw &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, info, id);

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
      {required final FilmRawDates dates,
      required final FilmRawInfo info,
      required final int id}) = _$_FilmRaw;

  factory _FilmRaw.fromJson(Map<String, dynamic> json) = _$_FilmRaw.fromJson;

  @override
  FilmRawDates get dates;
  @override
  FilmRawInfo get info;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_FilmRawCopyWith<_$_FilmRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
