// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String match, String? someErrorPossibly) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String match, String? someErrorPossibly)? data,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String match, String? someErrorPossibly)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchStateInitial value) initial,
    required TResult Function(_MatchStateLoading value) loading,
    required TResult Function(_MatchStateData value) data,
    required TResult Function(_MatchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchStateInitial value)? initial,
    TResult? Function(_MatchStateLoading value)? loading,
    TResult? Function(_MatchStateData value)? data,
    TResult? Function(_MatchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchStateInitial value)? initial,
    TResult Function(_MatchStateLoading value)? loading,
    TResult Function(_MatchStateData value)? data,
    TResult Function(_MatchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchStateCopyWith<$Res> {
  factory $MatchStateCopyWith(
          MatchState value, $Res Function(MatchState) then) =
      _$MatchStateCopyWithImpl<$Res, MatchState>;
}

/// @nodoc
class _$MatchStateCopyWithImpl<$Res, $Val extends MatchState>
    implements $MatchStateCopyWith<$Res> {
  _$MatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MatchStateInitialCopyWith<$Res> {
  factory _$$_MatchStateInitialCopyWith(_$_MatchStateInitial value,
          $Res Function(_$_MatchStateInitial) then) =
      __$$_MatchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MatchStateInitialCopyWithImpl<$Res>
    extends _$MatchStateCopyWithImpl<$Res, _$_MatchStateInitial>
    implements _$$_MatchStateInitialCopyWith<$Res> {
  __$$_MatchStateInitialCopyWithImpl(
      _$_MatchStateInitial _value, $Res Function(_$_MatchStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MatchStateInitial implements _MatchStateInitial {
  const _$_MatchStateInitial();

  @override
  String toString() {
    return 'MatchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MatchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String match, String? someErrorPossibly) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String match, String? someErrorPossibly)? data,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String match, String? someErrorPossibly)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchStateInitial value) initial,
    required TResult Function(_MatchStateLoading value) loading,
    required TResult Function(_MatchStateData value) data,
    required TResult Function(_MatchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchStateInitial value)? initial,
    TResult? Function(_MatchStateLoading value)? loading,
    TResult? Function(_MatchStateData value)? data,
    TResult? Function(_MatchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchStateInitial value)? initial,
    TResult Function(_MatchStateLoading value)? loading,
    TResult Function(_MatchStateData value)? data,
    TResult Function(_MatchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MatchStateInitial implements MatchState {
  const factory _MatchStateInitial() = _$_MatchStateInitial;
}

/// @nodoc
abstract class _$$_MatchStateLoadingCopyWith<$Res> {
  factory _$$_MatchStateLoadingCopyWith(_$_MatchStateLoading value,
          $Res Function(_$_MatchStateLoading) then) =
      __$$_MatchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MatchStateLoadingCopyWithImpl<$Res>
    extends _$MatchStateCopyWithImpl<$Res, _$_MatchStateLoading>
    implements _$$_MatchStateLoadingCopyWith<$Res> {
  __$$_MatchStateLoadingCopyWithImpl(
      _$_MatchStateLoading _value, $Res Function(_$_MatchStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MatchStateLoading implements _MatchStateLoading {
  const _$_MatchStateLoading();

  @override
  String toString() {
    return 'MatchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MatchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String match, String? someErrorPossibly) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String match, String? someErrorPossibly)? data,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String match, String? someErrorPossibly)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchStateInitial value) initial,
    required TResult Function(_MatchStateLoading value) loading,
    required TResult Function(_MatchStateData value) data,
    required TResult Function(_MatchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchStateInitial value)? initial,
    TResult? Function(_MatchStateLoading value)? loading,
    TResult? Function(_MatchStateData value)? data,
    TResult? Function(_MatchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchStateInitial value)? initial,
    TResult Function(_MatchStateLoading value)? loading,
    TResult Function(_MatchStateData value)? data,
    TResult Function(_MatchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MatchStateLoading implements MatchState {
  const factory _MatchStateLoading() = _$_MatchStateLoading;
}

/// @nodoc
abstract class _$$_MatchStateDataCopyWith<$Res> {
  factory _$$_MatchStateDataCopyWith(
          _$_MatchStateData value, $Res Function(_$_MatchStateData) then) =
      __$$_MatchStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String match, String? someErrorPossibly});
}

/// @nodoc
class __$$_MatchStateDataCopyWithImpl<$Res>
    extends _$MatchStateCopyWithImpl<$Res, _$_MatchStateData>
    implements _$$_MatchStateDataCopyWith<$Res> {
  __$$_MatchStateDataCopyWithImpl(
      _$_MatchStateData _value, $Res Function(_$_MatchStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = null,
    Object? someErrorPossibly = freezed,
  }) {
    return _then(_$_MatchStateData(
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as String,
      someErrorPossibly: freezed == someErrorPossibly
          ? _value.someErrorPossibly
          : someErrorPossibly // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MatchStateData implements _MatchStateData {
  const _$_MatchStateData({required this.match, this.someErrorPossibly});

// TODO match eventually needs to be match actual
  @override
  final String match;
  @override
  final String? someErrorPossibly;

  @override
  String toString() {
    return 'MatchState.data(match: $match, someErrorPossibly: $someErrorPossibly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchStateData &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.someErrorPossibly, someErrorPossibly) ||
                other.someErrorPossibly == someErrorPossibly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, match, someErrorPossibly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchStateDataCopyWith<_$_MatchStateData> get copyWith =>
      __$$_MatchStateDataCopyWithImpl<_$_MatchStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String match, String? someErrorPossibly) data,
    required TResult Function(String error) error,
  }) {
    return data(match, someErrorPossibly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String match, String? someErrorPossibly)? data,
    TResult? Function(String error)? error,
  }) {
    return data?.call(match, someErrorPossibly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String match, String? someErrorPossibly)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(match, someErrorPossibly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchStateInitial value) initial,
    required TResult Function(_MatchStateLoading value) loading,
    required TResult Function(_MatchStateData value) data,
    required TResult Function(_MatchStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchStateInitial value)? initial,
    TResult? Function(_MatchStateLoading value)? loading,
    TResult? Function(_MatchStateData value)? data,
    TResult? Function(_MatchStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchStateInitial value)? initial,
    TResult Function(_MatchStateLoading value)? loading,
    TResult Function(_MatchStateData value)? data,
    TResult Function(_MatchStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _MatchStateData implements MatchState {
  const factory _MatchStateData(
      {required final String match,
      final String? someErrorPossibly}) = _$_MatchStateData;

// TODO match eventually needs to be match actual
  String get match;
  String? get someErrorPossibly;
  @JsonKey(ignore: true)
  _$$_MatchStateDataCopyWith<_$_MatchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MatchStateErrorCopyWith<$Res> {
  factory _$$_MatchStateErrorCopyWith(
          _$_MatchStateError value, $Res Function(_$_MatchStateError) then) =
      __$$_MatchStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_MatchStateErrorCopyWithImpl<$Res>
    extends _$MatchStateCopyWithImpl<$Res, _$_MatchStateError>
    implements _$$_MatchStateErrorCopyWith<$Res> {
  __$$_MatchStateErrorCopyWithImpl(
      _$_MatchStateError _value, $Res Function(_$_MatchStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_MatchStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MatchStateError implements _MatchStateError {
  const _$_MatchStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MatchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchStateErrorCopyWith<_$_MatchStateError> get copyWith =>
      __$$_MatchStateErrorCopyWithImpl<_$_MatchStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String match, String? someErrorPossibly) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String match, String? someErrorPossibly)? data,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String match, String? someErrorPossibly)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MatchStateInitial value) initial,
    required TResult Function(_MatchStateLoading value) loading,
    required TResult Function(_MatchStateData value) data,
    required TResult Function(_MatchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MatchStateInitial value)? initial,
    TResult? Function(_MatchStateLoading value)? loading,
    TResult? Function(_MatchStateData value)? data,
    TResult? Function(_MatchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MatchStateInitial value)? initial,
    TResult Function(_MatchStateLoading value)? loading,
    TResult Function(_MatchStateData value)? data,
    TResult Function(_MatchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MatchStateError implements MatchState {
  const factory _MatchStateError({required final String error}) =
      _$_MatchStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_MatchStateErrorCopyWith<_$_MatchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
