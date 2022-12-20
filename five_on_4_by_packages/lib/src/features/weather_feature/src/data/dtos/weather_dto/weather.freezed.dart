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

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  double get elevation => throw _privateConstructorUsedError;
  @JsonKey(name: "current_weather")
  WeatherCurrentWeatherDTO get currentWeather =>
      throw _privateConstructorUsedError;

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
      {double elevation,
      @JsonKey(name: "current_weather")
          WeatherCurrentWeatherDTO currentWeather});

  $WeatherCurrentWeatherDTOCopyWith<$Res> get currentWeather;
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
    Object? elevation = null,
    Object? currentWeather = null,
  }) {
    return _then(_value.copyWith(
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherCurrentWeatherDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCurrentWeatherDTOCopyWith<$Res> get currentWeather {
    return $WeatherCurrentWeatherDTOCopyWith<$Res>(_value.currentWeather,
        (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
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
      {double elevation,
      @JsonKey(name: "current_weather")
          WeatherCurrentWeatherDTO currentWeather});

  @override
  $WeatherCurrentWeatherDTOCopyWith<$Res> get currentWeather;
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
    Object? elevation = null,
    Object? currentWeather = null,
  }) {
    return _then(_$_WeatherDTO(
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherCurrentWeatherDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDTO implements _WeatherDTO {
  const _$_WeatherDTO(
      {required this.elevation,
      @JsonKey(name: "current_weather") required this.currentWeather});

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  final double elevation;
  @override
  @JsonKey(name: "current_weather")
  final WeatherCurrentWeatherDTO currentWeather;

  @override
  String toString() {
    return 'WeatherDTO(elevation: $elevation, currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDTO &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, elevation, currentWeather);

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
          {required final double elevation,
          @JsonKey(name: "current_weather")
              required final WeatherCurrentWeatherDTO currentWeather}) =
      _$_WeatherDTO;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  double get elevation;
  @override
  @JsonKey(name: "current_weather")
  WeatherCurrentWeatherDTO get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherCurrentWeatherDTO _$WeatherCurrentWeatherDTOFromJson(
    Map<String, dynamic> json) {
  return _WeatherCurrentWeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherCurrentWeatherDTO {
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: "windspeed")
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: "winddirection")
  double get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: "weathercode")
  int get weatherCode => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCurrentWeatherDTOCopyWith<WeatherCurrentWeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCurrentWeatherDTOCopyWith<$Res> {
  factory $WeatherCurrentWeatherDTOCopyWith(WeatherCurrentWeatherDTO value,
          $Res Function(WeatherCurrentWeatherDTO) then) =
      _$WeatherCurrentWeatherDTOCopyWithImpl<$Res, WeatherCurrentWeatherDTO>;
  @useResult
  $Res call(
      {double temperature,
      @JsonKey(name: "windspeed") double windSpeed,
      @JsonKey(name: "winddirection") double windDirection,
      @JsonKey(name: "weathercode") int weatherCode,
      String time});
}

/// @nodoc
class _$WeatherCurrentWeatherDTOCopyWithImpl<$Res,
        $Val extends WeatherCurrentWeatherDTO>
    implements $WeatherCurrentWeatherDTOCopyWith<$Res> {
  _$WeatherCurrentWeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? weatherCode = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCurrentWeatherDTOCopyWith<$Res>
    implements $WeatherCurrentWeatherDTOCopyWith<$Res> {
  factory _$$_WeatherCurrentWeatherDTOCopyWith(
          _$_WeatherCurrentWeatherDTO value,
          $Res Function(_$_WeatherCurrentWeatherDTO) then) =
      __$$_WeatherCurrentWeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temperature,
      @JsonKey(name: "windspeed") double windSpeed,
      @JsonKey(name: "winddirection") double windDirection,
      @JsonKey(name: "weathercode") int weatherCode,
      String time});
}

/// @nodoc
class __$$_WeatherCurrentWeatherDTOCopyWithImpl<$Res>
    extends _$WeatherCurrentWeatherDTOCopyWithImpl<$Res,
        _$_WeatherCurrentWeatherDTO>
    implements _$$_WeatherCurrentWeatherDTOCopyWith<$Res> {
  __$$_WeatherCurrentWeatherDTOCopyWithImpl(_$_WeatherCurrentWeatherDTO _value,
      $Res Function(_$_WeatherCurrentWeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = null,
    Object? windSpeed = null,
    Object? windDirection = null,
    Object? weatherCode = null,
    Object? time = null,
  }) {
    return _then(_$_WeatherCurrentWeatherDTO(
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: null == windDirection
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherCurrentWeatherDTO implements _WeatherCurrentWeatherDTO {
  const _$_WeatherCurrentWeatherDTO(
      {required this.temperature,
      @JsonKey(name: "windspeed") required this.windSpeed,
      @JsonKey(name: "winddirection") required this.windDirection,
      @JsonKey(name: "weathercode") required this.weatherCode,
      required this.time});

  factory _$_WeatherCurrentWeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherCurrentWeatherDTOFromJson(json);

  @override
  final double temperature;
  @override
  @JsonKey(name: "windspeed")
  final double windSpeed;
  @override
  @JsonKey(name: "winddirection")
  final double windDirection;
  @override
  @JsonKey(name: "weathercode")
  final int weatherCode;
  @override
  final String time;

  @override
  String toString() {
    return 'WeatherCurrentWeatherDTO(temperature: $temperature, windSpeed: $windSpeed, windDirection: $windDirection, weatherCode: $weatherCode, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherCurrentWeatherDTO &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, temperature, windSpeed, windDirection, weatherCode, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCurrentWeatherDTOCopyWith<_$_WeatherCurrentWeatherDTO>
      get copyWith => __$$_WeatherCurrentWeatherDTOCopyWithImpl<
          _$_WeatherCurrentWeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherCurrentWeatherDTOToJson(
      this,
    );
  }
}

abstract class _WeatherCurrentWeatherDTO implements WeatherCurrentWeatherDTO {
  const factory _WeatherCurrentWeatherDTO(
      {required final double temperature,
      @JsonKey(name: "windspeed") required final double windSpeed,
      @JsonKey(name: "winddirection") required final double windDirection,
      @JsonKey(name: "weathercode") required final int weatherCode,
      required final String time}) = _$_WeatherCurrentWeatherDTO;

  factory _WeatherCurrentWeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherCurrentWeatherDTO.fromJson;

  @override
  double get temperature;
  @override
  @JsonKey(name: "windspeed")
  double get windSpeed;
  @override
  @JsonKey(name: "winddirection")
  double get windDirection;
  @override
  @JsonKey(name: "weathercode")
  int get weatherCode;
  @override
  String get time;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCurrentWeatherDTOCopyWith<_$_WeatherCurrentWeatherDTO>
      get copyWith => throw _privateConstructorUsedError;
}
