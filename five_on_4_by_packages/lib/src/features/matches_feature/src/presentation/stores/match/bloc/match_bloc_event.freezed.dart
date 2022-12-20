// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchBlocEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(String id) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? load,
    TResult? Function(String id)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(String id)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchBlocEventLoad value) load,
    required TResult Function(_MatchBlocEventReload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchBlocEventLoad value)? load,
    TResult? Function(_MatchBlocEventReload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchBlocEventLoad value)? load,
    TResult Function(_MatchBlocEventReload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MatchBlocEventCopyWith<MatchBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchBlocEventCopyWith<$Res> {
  factory $MatchBlocEventCopyWith(
          MatchBlocEvent value, $Res Function(MatchBlocEvent) then) =
      _$MatchBlocEventCopyWithImpl<$Res, MatchBlocEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MatchBlocEventCopyWithImpl<$Res, $Val extends MatchBlocEvent>
    implements $MatchBlocEventCopyWith<$Res> {
  _$MatchBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchBlocEventLoadCopyWith<$Res>
    implements $MatchBlocEventCopyWith<$Res> {
  factory _$$_MatchBlocEventLoadCopyWith(_$_MatchBlocEventLoad value,
          $Res Function(_$_MatchBlocEventLoad) then) =
      __$$_MatchBlocEventLoadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_MatchBlocEventLoadCopyWithImpl<$Res>
    extends _$MatchBlocEventCopyWithImpl<$Res, _$_MatchBlocEventLoad>
    implements _$$_MatchBlocEventLoadCopyWith<$Res> {
  __$$_MatchBlocEventLoadCopyWithImpl(
      _$_MatchBlocEventLoad _value, $Res Function(_$_MatchBlocEventLoad) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_MatchBlocEventLoad(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MatchBlocEventLoad implements _MatchBlocEventLoad {
  const _$_MatchBlocEventLoad(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MatchBlocEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchBlocEventLoad &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchBlocEventLoadCopyWith<_$_MatchBlocEventLoad> get copyWith =>
      __$$_MatchBlocEventLoadCopyWithImpl<_$_MatchBlocEventLoad>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(String id) reload,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? load,
    TResult? Function(String id)? reload,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(String id)? reload,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchBlocEventLoad value) load,
    required TResult Function(_MatchBlocEventReload value) reload,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchBlocEventLoad value)? load,
    TResult? Function(_MatchBlocEventReload value)? reload,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchBlocEventLoad value)? load,
    TResult Function(_MatchBlocEventReload value)? reload,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _MatchBlocEventLoad implements MatchBlocEvent {
  const factory _MatchBlocEventLoad(final String id) = _$_MatchBlocEventLoad;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_MatchBlocEventLoadCopyWith<_$_MatchBlocEventLoad> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MatchBlocEventReloadCopyWith<$Res>
    implements $MatchBlocEventCopyWith<$Res> {
  factory _$$_MatchBlocEventReloadCopyWith(_$_MatchBlocEventReload value,
          $Res Function(_$_MatchBlocEventReload) then) =
      __$$_MatchBlocEventReloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_MatchBlocEventReloadCopyWithImpl<$Res>
    extends _$MatchBlocEventCopyWithImpl<$Res, _$_MatchBlocEventReload>
    implements _$$_MatchBlocEventReloadCopyWith<$Res> {
  __$$_MatchBlocEventReloadCopyWithImpl(_$_MatchBlocEventReload _value,
      $Res Function(_$_MatchBlocEventReload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_MatchBlocEventReload(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MatchBlocEventReload implements _MatchBlocEventReload {
  const _$_MatchBlocEventReload(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'MatchBlocEvent.reload(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchBlocEventReload &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchBlocEventReloadCopyWith<_$_MatchBlocEventReload> get copyWith =>
      __$$_MatchBlocEventReloadCopyWithImpl<_$_MatchBlocEventReload>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) load,
    required TResult Function(String id) reload,
  }) {
    return reload(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? load,
    TResult? Function(String id)? reload,
  }) {
    return reload?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? load,
    TResult Function(String id)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchBlocEventLoad value) load,
    required TResult Function(_MatchBlocEventReload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchBlocEventLoad value)? load,
    TResult? Function(_MatchBlocEventReload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchBlocEventLoad value)? load,
    TResult Function(_MatchBlocEventReload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _MatchBlocEventReload implements MatchBlocEvent {
  const factory _MatchBlocEventReload(final String id) =
      _$_MatchBlocEventReload;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_MatchBlocEventReloadCopyWith<_$_MatchBlocEventReload> get copyWith =>
      throw _privateConstructorUsedError;
}
