// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchApiDTO _$MatchApiDTOFromJson(Map<String, dynamic> json) {
  return _MatchApiDTO.fromJson(json);
}

/// @nodoc
mixin _$MatchApiDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchApiDTOCopyWith<MatchApiDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchApiDTOCopyWith<$Res> {
  factory $MatchApiDTOCopyWith(
          MatchApiDTO value, $Res Function(MatchApiDTO) then) =
      _$MatchApiDTOCopyWithImpl<$Res, MatchApiDTO>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$MatchApiDTOCopyWithImpl<$Res, $Val extends MatchApiDTO>
    implements $MatchApiDTOCopyWith<$Res> {
  _$MatchApiDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchApiDTOCopyWith<$Res>
    implements $MatchApiDTOCopyWith<$Res> {
  factory _$$_MatchApiDTOCopyWith(
          _$_MatchApiDTO value, $Res Function(_$_MatchApiDTO) then) =
      __$$_MatchApiDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_MatchApiDTOCopyWithImpl<$Res>
    extends _$MatchApiDTOCopyWithImpl<$Res, _$_MatchApiDTO>
    implements _$$_MatchApiDTOCopyWith<$Res> {
  __$$_MatchApiDTOCopyWithImpl(
      _$_MatchApiDTO _value, $Res Function(_$_MatchApiDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_MatchApiDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchApiDTO implements _MatchApiDTO {
  const _$_MatchApiDTO({required this.id, required this.name});

  factory _$_MatchApiDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MatchApiDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'MatchApiDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchApiDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchApiDTOCopyWith<_$_MatchApiDTO> get copyWith =>
      __$$_MatchApiDTOCopyWithImpl<_$_MatchApiDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchApiDTOToJson(
      this,
    );
  }
}

abstract class _MatchApiDTO implements MatchApiDTO {
  const factory _MatchApiDTO(
      {required final String id, required final String name}) = _$_MatchApiDTO;

  factory _MatchApiDTO.fromJson(Map<String, dynamic> json) =
      _$_MatchApiDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MatchApiDTOCopyWith<_$_MatchApiDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
