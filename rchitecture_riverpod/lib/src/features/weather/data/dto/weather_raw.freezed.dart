// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherRawInfo _$WeatherRawInfoFromJson(Map<String, dynamic> json) {
  return _WeatherRawInfo.fromJson(json);
}

/// @nodoc
mixin _$WeatherRawInfo {
  String get product => throw _privateConstructorUsedError;
  String get init => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRawInfoCopyWith<WeatherRawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRawInfoCopyWith<$Res> {
  factory $WeatherRawInfoCopyWith(
          WeatherRawInfo value, $Res Function(WeatherRawInfo) then) =
      _$WeatherRawInfoCopyWithImpl<$Res, WeatherRawInfo>;
  @useResult
  $Res call({String product, String init});
}

/// @nodoc
class _$WeatherRawInfoCopyWithImpl<$Res, $Val extends WeatherRawInfo>
    implements $WeatherRawInfoCopyWith<$Res> {
  _$WeatherRawInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? init = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherRawInfoCopyWith<$Res>
    implements $WeatherRawInfoCopyWith<$Res> {
  factory _$$_WeatherRawInfoCopyWith(
          _$_WeatherRawInfo value, $Res Function(_$_WeatherRawInfo) then) =
      __$$_WeatherRawInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String product, String init});
}

/// @nodoc
class __$$_WeatherRawInfoCopyWithImpl<$Res>
    extends _$WeatherRawInfoCopyWithImpl<$Res, _$_WeatherRawInfo>
    implements _$$_WeatherRawInfoCopyWith<$Res> {
  __$$_WeatherRawInfoCopyWithImpl(
      _$_WeatherRawInfo _value, $Res Function(_$_WeatherRawInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? init = null,
  }) {
    return _then(_$_WeatherRawInfo(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherRawInfo implements _WeatherRawInfo {
  const _$_WeatherRawInfo({required this.product, required this.init});

  factory _$_WeatherRawInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherRawInfoFromJson(json);

  @override
  final String product;
  @override
  final String init;

  @override
  String toString() {
    return 'WeatherRawInfo(product: $product, init: $init)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherRawInfo &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.init, init) || other.init == init));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, init);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherRawInfoCopyWith<_$_WeatherRawInfo> get copyWith =>
      __$$_WeatherRawInfoCopyWithImpl<_$_WeatherRawInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherRawInfoToJson(
      this,
    );
  }
}

abstract class _WeatherRawInfo implements WeatherRawInfo {
  const factory _WeatherRawInfo(
      {required final String product,
      required final String init}) = _$_WeatherRawInfo;

  factory _WeatherRawInfo.fromJson(Map<String, dynamic> json) =
      _$_WeatherRawInfo.fromJson;

  @override
  String get product;
  @override
  String get init;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherRawInfoCopyWith<_$_WeatherRawInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherRawData _$WeatherRawDataFromJson(Map<String, dynamic> json) {
  return _WeatherRawData.fromJson(json);
}

/// @nodoc
mixin _$WeatherRawData {
  int get timepoint => throw _privateConstructorUsedError;
  int get cloudcover => throw _privateConstructorUsedError;
  @JsonKey(name: "lifted_index")
  int get liftedIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRawDataCopyWith<WeatherRawData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRawDataCopyWith<$Res> {
  factory $WeatherRawDataCopyWith(
          WeatherRawData value, $Res Function(WeatherRawData) then) =
      _$WeatherRawDataCopyWithImpl<$Res, WeatherRawData>;
  @useResult
  $Res call(
      {int timepoint,
      int cloudcover,
      @JsonKey(name: "lifted_index") int liftedIndex});
}

/// @nodoc
class _$WeatherRawDataCopyWithImpl<$Res, $Val extends WeatherRawData>
    implements $WeatherRawDataCopyWith<$Res> {
  _$WeatherRawDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_WeatherRawDataCopyWith<$Res>
    implements $WeatherRawDataCopyWith<$Res> {
  factory _$$_WeatherRawDataCopyWith(
          _$_WeatherRawData value, $Res Function(_$_WeatherRawData) then) =
      __$$_WeatherRawDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int timepoint,
      int cloudcover,
      @JsonKey(name: "lifted_index") int liftedIndex});
}

/// @nodoc
class __$$_WeatherRawDataCopyWithImpl<$Res>
    extends _$WeatherRawDataCopyWithImpl<$Res, _$_WeatherRawData>
    implements _$$_WeatherRawDataCopyWith<$Res> {
  __$$_WeatherRawDataCopyWithImpl(
      _$_WeatherRawData _value, $Res Function(_$_WeatherRawData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timepoint = null,
    Object? cloudcover = null,
    Object? liftedIndex = null,
  }) {
    return _then(_$_WeatherRawData(
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
class _$_WeatherRawData implements _WeatherRawData {
  const _$_WeatherRawData(
      {required this.timepoint,
      required this.cloudcover,
      @JsonKey(name: "lifted_index") required this.liftedIndex});

  factory _$_WeatherRawData.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherRawDataFromJson(json);

  @override
  final int timepoint;
  @override
  final int cloudcover;
  @override
  @JsonKey(name: "lifted_index")
  final int liftedIndex;

  @override
  String toString() {
    return 'WeatherRawData(timepoint: $timepoint, cloudcover: $cloudcover, liftedIndex: $liftedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherRawData &&
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
  _$$_WeatherRawDataCopyWith<_$_WeatherRawData> get copyWith =>
      __$$_WeatherRawDataCopyWithImpl<_$_WeatherRawData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherRawDataToJson(
      this,
    );
  }
}

abstract class _WeatherRawData implements WeatherRawData {
  const factory _WeatherRawData(
          {required final int timepoint,
          required final int cloudcover,
          @JsonKey(name: "lifted_index") required final int liftedIndex}) =
      _$_WeatherRawData;

  factory _WeatherRawData.fromJson(Map<String, dynamic> json) =
      _$_WeatherRawData.fromJson;

  @override
  int get timepoint;
  @override
  int get cloudcover;
  @override
  @JsonKey(name: "lifted_index")
  int get liftedIndex;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherRawDataCopyWith<_$_WeatherRawData> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherRaw _$WeatherRawFromJson(Map<String, dynamic> json) {
  return _WeatherRaw.fromJson(json);
}

/// @nodoc
mixin _$WeatherRaw {
  String get product => throw _privateConstructorUsedError;
  String get init => throw _privateConstructorUsedError;
  @JsonKey(name: "dataseries")
  List<WeatherRawData> get dataSeries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRawCopyWith<WeatherRaw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRawCopyWith<$Res> {
  factory $WeatherRawCopyWith(
          WeatherRaw value, $Res Function(WeatherRaw) then) =
      _$WeatherRawCopyWithImpl<$Res, WeatherRaw>;
  @useResult
  $Res call(
      {String product,
      String init,
      @JsonKey(name: "dataseries") List<WeatherRawData> dataSeries});
}

/// @nodoc
class _$WeatherRawCopyWithImpl<$Res, $Val extends WeatherRaw>
    implements $WeatherRawCopyWith<$Res> {
  _$WeatherRawCopyWithImpl(this._value, this._then);

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
              as List<WeatherRawData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherRawCopyWith<$Res>
    implements $WeatherRawCopyWith<$Res> {
  factory _$$_WeatherRawCopyWith(
          _$_WeatherRaw value, $Res Function(_$_WeatherRaw) then) =
      __$$_WeatherRawCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String product,
      String init,
      @JsonKey(name: "dataseries") List<WeatherRawData> dataSeries});
}

/// @nodoc
class __$$_WeatherRawCopyWithImpl<$Res>
    extends _$WeatherRawCopyWithImpl<$Res, _$_WeatherRaw>
    implements _$$_WeatherRawCopyWith<$Res> {
  __$$_WeatherRawCopyWithImpl(
      _$_WeatherRaw _value, $Res Function(_$_WeatherRaw) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? init = null,
    Object? dataSeries = null,
  }) {
    return _then(_$_WeatherRaw(
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
              as List<WeatherRawData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherRaw implements _WeatherRaw {
  const _$_WeatherRaw(
      {required this.product,
      required this.init,
      @JsonKey(name: "dataseries")
          required final List<WeatherRawData> dataSeries})
      : _dataSeries = dataSeries;

  factory _$_WeatherRaw.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherRawFromJson(json);

  @override
  final String product;
  @override
  final String init;
  final List<WeatherRawData> _dataSeries;
  @override
  @JsonKey(name: "dataseries")
  List<WeatherRawData> get dataSeries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSeries);
  }

  @override
  String toString() {
    return 'WeatherRaw(product: $product, init: $init, dataSeries: $dataSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherRaw &&
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
  _$$_WeatherRawCopyWith<_$_WeatherRaw> get copyWith =>
      __$$_WeatherRawCopyWithImpl<_$_WeatherRaw>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherRawToJson(
      this,
    );
  }
}

abstract class _WeatherRaw implements WeatherRaw {
  const factory _WeatherRaw(
      {required final String product,
      required final String init,
      @JsonKey(name: "dataseries")
          required final List<WeatherRawData> dataSeries}) = _$_WeatherRaw;

  factory _WeatherRaw.fromJson(Map<String, dynamic> json) =
      _$_WeatherRaw.fromJson;

  @override
  String get product;
  @override
  String get init;
  @override
  @JsonKey(name: "dataseries")
  List<WeatherRawData> get dataSeries;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherRawCopyWith<_$_WeatherRaw> get copyWith =>
      throw _privateConstructorUsedError;
}
