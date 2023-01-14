// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_store_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthKeyStoreDTO {
  String get token => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthKeyStoreDTOCopyWith<AuthKeyStoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthKeyStoreDTOCopyWith<$Res> {
  factory $AuthKeyStoreDTOCopyWith(
          AuthKeyStoreDTO value, $Res Function(AuthKeyStoreDTO) then) =
      _$AuthKeyStoreDTOCopyWithImpl<$Res, AuthKeyStoreDTO>;
  @useResult
  $Res call({String token, String id, String name});
}

/// @nodoc
class _$AuthKeyStoreDTOCopyWithImpl<$Res, $Val extends AuthKeyStoreDTO>
    implements $AuthKeyStoreDTOCopyWith<$Res> {
  _$AuthKeyStoreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_AuthKeyStoreDTOCopyWith<$Res>
    implements $AuthKeyStoreDTOCopyWith<$Res> {
  factory _$$_AuthKeyStoreDTOCopyWith(
          _$_AuthKeyStoreDTO value, $Res Function(_$_AuthKeyStoreDTO) then) =
      __$$_AuthKeyStoreDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String id, String name});
}

/// @nodoc
class __$$_AuthKeyStoreDTOCopyWithImpl<$Res>
    extends _$AuthKeyStoreDTOCopyWithImpl<$Res, _$_AuthKeyStoreDTO>
    implements _$$_AuthKeyStoreDTOCopyWith<$Res> {
  __$$_AuthKeyStoreDTOCopyWithImpl(
      _$_AuthKeyStoreDTO _value, $Res Function(_$_AuthKeyStoreDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_AuthKeyStoreDTO(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_AuthKeyStoreDTO implements _AuthKeyStoreDTO {
  const _$_AuthKeyStoreDTO(
      {required this.token, required this.id, required this.name});

  @override
  final String token;
  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthKeyStoreDTO(token: $token, id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthKeyStoreDTO &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthKeyStoreDTOCopyWith<_$_AuthKeyStoreDTO> get copyWith =>
      __$$_AuthKeyStoreDTOCopyWithImpl<_$_AuthKeyStoreDTO>(this, _$identity);
}

abstract class _AuthKeyStoreDTO implements AuthKeyStoreDTO {
  const factory _AuthKeyStoreDTO(
      {required final String token,
      required final String id,
      required final String name}) = _$_AuthKeyStoreDTO;

  @override
  String get token;
  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AuthKeyStoreDTOCopyWith<_$_AuthKeyStoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
