// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDataDTO _$WeatherDataDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDataDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDataDTO {
  int get timepoint => throw _privateConstructorUsedError;
  int get cloudcover => throw _privateConstructorUsedError;
  @JsonKey(name: "lifted_index")
  int get liftedIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataDTOCopyWith<WeatherDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataDTOCopyWith<$Res> {
  factory $WeatherDataDTOCopyWith(
          WeatherDataDTO value, $Res Function(WeatherDataDTO) then) =
      _$WeatherDataDTOCopyWithImpl<$Res, WeatherDataDTO>;
  @useResult
  $Res call(
      {int timepoint,
      int cloudcover,
      @JsonKey(name: "lifted_index") int liftedIndex});
}

/// @nodoc
class _$WeatherDataDTOCopyWithImpl<$Res, $Val extends WeatherDataDTO>
    implements $WeatherDataDTOCopyWith<$Res> {
  _$WeatherDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timepoint = null,
    Object? cloudcover = null,
    Object? liftedIndex = null,
  }) {
    return _then(_value.copyWith(
      timepoint: null == timepoint
          ? _value.timepoint
          : timepoint // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      liftedIndex: null == liftedIndex
          ? _value.liftedIndex
          : liftedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDataDTOCopyWith<$Res>
    implements $WeatherDataDTOCopyWith<$Res> {
  factory _$$_WeatherDataDTOCopyWith(
          _$_WeatherDataDTO value, $Res Function(_$_WeatherDataDTO) then) =
      __$$_WeatherDataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timepoint,
      int cloudcover,
      @JsonKey(name: "lifted_index") int liftedIndex});
}

/// @nodoc
class __$$_WeatherDataDTOCopyWithImpl<$Res>
    extends _$WeatherDataDTOCopyWithImpl<$Res, _$_WeatherDataDTO>
    implements _$$_WeatherDataDTOCopyWith<$Res> {
  __$$_WeatherDataDTOCopyWithImpl(
      _$_WeatherDataDTO _value, $Res Function(_$_WeatherDataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timepoint = null,
    Object? cloudcover = null,
    Object? liftedIndex = null,
  }) {
    return _then(_$_WeatherDataDTO(
      timepoint: null == timepoint
          ? _value.timepoint
          : timepoint // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
      liftedIndex: null == liftedIndex
          ? _value.liftedIndex
          : liftedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDataDTO implements _WeatherDataDTO {
  const _$_WeatherDataDTO(
      {required this.timepoint,
      required this.cloudcover,
      @JsonKey(name: "lifted_index") required this.liftedIndex});

  factory _$_WeatherDataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDataDTOFromJson(json);

  @override
  final int timepoint;
  @override
  final int cloudcover;
  @override
  @JsonKey(name: "lifted_index")
  final int liftedIndex;

  @override
  String toString() {
    return 'WeatherDataDTO(timepoint: $timepoint, cloudcover: $cloudcover, liftedIndex: $liftedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDataDTO &&
            (identical(other.timepoint, timepoint) ||
                other.timepoint == timepoint) &&
            (identical(other.cloudcover, cloudcover) ||
                other.cloudcover == cloudcover) &&
            (identical(other.liftedIndex, liftedIndex) ||
                other.liftedIndex == liftedIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timepoint, cloudcover, liftedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDataDTOCopyWith<_$_WeatherDataDTO> get copyWith =>
      __$$_WeatherDataDTOCopyWithImpl<_$_WeatherDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDataDTOToJson(
      this,
    );
  }
}

abstract class _WeatherDataDTO implements WeatherDataDTO {
  const factory _WeatherDataDTO(
          {required final int timepoint,
          required final int cloudcover,
          @JsonKey(name: "lifted_index") required final int liftedIndex}) =
      _$_WeatherDataDTO;

  factory _WeatherDataDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDataDTO.fromJson;

  @override
  int get timepoint;
  @override
  int get cloudcover;
  @override
  @JsonKey(name: "lifted_index")
  int get liftedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDataDTOCopyWith<_$_WeatherDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  String get product => throw _privateConstructorUsedError;
  String get init => throw _privateConstructorUsedError;
  @JsonKey(name: "dataseries")
  List<WeatherDataDTO> get dataSeries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res, WeatherDTO>;
  @useResult
  $Res call(
      {String product,
      String init,
      @JsonKey(name: "dataseries") List<WeatherDataDTO> dataSeries});
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res, $Val extends WeatherDTO>
    implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? init = null,
    Object? dataSeries = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as String,
      dataSeries: null == dataSeries
          ? _value.dataSeries
          : dataSeries // ignore: cast_nullable_to_non_nullable
              as List<WeatherDataDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherDTOCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$$_WeatherDTOCopyWith(
          _$_WeatherDTO value, $Res Function(_$_WeatherDTO) then) =
      __$$_WeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String product,
      String init,
      @JsonKey(name: "dataseries") List<WeatherDataDTO> dataSeries});
}

/// @nodoc
class __$$_WeatherDTOCopyWithImpl<$Res>
    extends _$WeatherDTOCopyWithImpl<$Res, _$_WeatherDTO>
    implements _$$_WeatherDTOCopyWith<$Res> {
  __$$_WeatherDTOCopyWithImpl(
      _$_WeatherDTO _value, $Res Function(_$_WeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? init = null,
    Object? dataSeries = null,
  }) {
    return _then(_$_WeatherDTO(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as String,
      dataSeries: null == dataSeries
          ? _value._dataSeries
          : dataSeries // ignore: cast_nullable_to_non_nullable
              as List<WeatherDataDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDTO implements _WeatherDTO {
  const _$_WeatherDTO(
      {required this.product,
      required this.init,
      @JsonKey(name: "dataseries")
          required final List<WeatherDataDTO> dataSeries})
      : _dataSeries = dataSeries;

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  final String product;
  @override
  final String init;
  final List<WeatherDataDTO> _dataSeries;
  @override
  @JsonKey(name: "dataseries")
  List<WeatherDataDTO> get dataSeries {
    if (_dataSeries is EqualUnmodifiableListView) return _dataSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSeries);
  }

  @override
  String toString() {
    return 'WeatherDTO(product: $product, init: $init, dataSeries: $dataSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDTO &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.init, init) || other.init == init) &&
            const DeepCollectionEquality()
                .equals(other._dataSeries, _dataSeries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, init,
      const DeepCollectionEquality().hash(_dataSeries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      __$$_WeatherDTOCopyWithImpl<_$_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDTOToJson(
      this,
    );
  }
}

abstract class _WeatherDTO implements WeatherDTO {
  const factory _WeatherDTO(
      {required final String product,
      required final String init,
      @JsonKey(name: "dataseries")
          required final List<WeatherDataDTO> dataSeries}) = _$_WeatherDTO;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  String get product;
  @override
  String get init;
  @override
  @JsonKey(name: "dataseries")
  List<WeatherDataDTO> get dataSeries;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
