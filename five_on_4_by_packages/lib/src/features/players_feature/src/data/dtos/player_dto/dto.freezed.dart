// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerApiDTO _$PlayerApiDTOFromJson(Map<String, dynamic> json) {
  return _PlayerDTO.fromJson(json);
}

/// @nodoc
mixin _$PlayerApiDTO {
  String get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerApiDTOCopyWith<PlayerApiDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerApiDTOCopyWith<$Res> {
  factory $PlayerApiDTOCopyWith(
          PlayerApiDTO value, $Res Function(PlayerApiDTO) then) =
      _$PlayerApiDTOCopyWithImpl<$Res, PlayerApiDTO>;
  @useResult
  $Res call({String id, String nickname});
}

/// @nodoc
class _$PlayerApiDTOCopyWithImpl<$Res, $Val extends PlayerApiDTO>
    implements $PlayerApiDTOCopyWith<$Res> {
  _$PlayerApiDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerDTOCopyWith<$Res>
    implements $PlayerApiDTOCopyWith<$Res> {
  factory _$$_PlayerDTOCopyWith(
          _$_PlayerDTO value, $Res Function(_$_PlayerDTO) then) =
      __$$_PlayerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickname});
}

/// @nodoc
class __$$_PlayerDTOCopyWithImpl<$Res>
    extends _$PlayerApiDTOCopyWithImpl<$Res, _$_PlayerDTO>
    implements _$$_PlayerDTOCopyWith<$Res> {
  __$$_PlayerDTOCopyWithImpl(
      _$_PlayerDTO _value, $Res Function(_$_PlayerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
  }) {
    return _then(_$_PlayerDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerDTO implements _PlayerDTO {
  const _$_PlayerDTO({required this.id, required this.nickname});

  factory _$_PlayerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerDTOFromJson(json);

  @override
  final String id;
  @override
  final String nickname;

  @override
  String toString() {
    return 'PlayerApiDTO(id: $id, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerDTOCopyWith<_$_PlayerDTO> get copyWith =>
      __$$_PlayerDTOCopyWithImpl<_$_PlayerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerDTOToJson(
      this,
    );
  }
}

abstract class _PlayerDTO implements PlayerApiDTO {
  const factory _PlayerDTO(
      {required final String id,
      required final String nickname}) = _$_PlayerDTO;

  factory _PlayerDTO.fromJson(Map<String, dynamic> json) =
      _$_PlayerDTO.fromJson;

  @override
  String get id;
  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerDTOCopyWith<_$_PlayerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
