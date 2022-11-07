// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Film _$FilmFromJson(Map<String, dynamic> json) {
  return _Film.fromJson(json);
}

/// @nodoc
mixin _$Film {
  String get title => throw _privateConstructorUsedError;
  String get director =>
      throw _privateConstructorUsedError; // required String year,
  @JsonKey(name: "release_date")
  String get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res, Film>;
  @useResult
  $Res call(
      {String title,
      String director,
      @JsonKey(name: "release_date") String year});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res, $Val extends Film>
    implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? year = null,
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
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$$_FilmCopyWith(_$_Film value, $Res Function(_$_Film) then) =
      __$$_FilmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String director,
      @JsonKey(name: "release_date") String year});
}

/// @nodoc
class __$$_FilmCopyWithImpl<$Res> extends _$FilmCopyWithImpl<$Res, _$_Film>
    implements _$$_FilmCopyWith<$Res> {
  __$$_FilmCopyWithImpl(_$_Film _value, $Res Function(_$_Film) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? director = null,
    Object? year = null,
  }) {
    return _then(_$_Film(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      director: null == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Film implements _Film {
  _$_Film(
      {required this.title,
      required this.director,
      @JsonKey(name: "release_date") required this.year});

  factory _$_Film.fromJson(Map<String, dynamic> json) => _$$_FilmFromJson(json);

  @override
  final String title;
  @override
  final String director;
// required String year,
  @override
  @JsonKey(name: "release_date")
  final String year;

  @override
  String toString() {
    return 'Film(title: $title, director: $director, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Film &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.director, director) ||
                other.director == director) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, director, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmCopyWith<_$_Film> get copyWith =>
      __$$_FilmCopyWithImpl<_$_Film>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmToJson(
      this,
    );
  }
}

abstract class _Film implements Film {
  factory _Film(
      {required final String title,
      required final String director,
      @JsonKey(name: "release_date") required final String year}) = _$_Film;

  factory _Film.fromJson(Map<String, dynamic> json) = _$_Film.fromJson;

  @override
  String get title;
  @override
  String get director;
  @override // required String year,
  @JsonKey(name: "release_date")
  String get year;
  @override
  @JsonKey(ignore: true)
  _$$_FilmCopyWith<_$_Film> get copyWith => throw _privateConstructorUsedError;
}
