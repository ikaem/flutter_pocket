// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherRawInfo _$$_WeatherRawInfoFromJson(Map<String, dynamic> json) =>
    _$_WeatherRawInfo(
      product: json['product'] as String,
      init: json['init'] as String,
    );

Map<String, dynamic> _$$_WeatherRawInfoToJson(_$_WeatherRawInfo instance) =>
    <String, dynamic>{
      'product': instance.product,
      'init': instance.init,
    };

_$_WeatherRawData _$$_WeatherRawDataFromJson(Map<String, dynamic> json) =>
    _$_WeatherRawData(
      timepoint: json['timepoint'] as int,
      cloudcover: json['cloudcover'] as int,
      liftedIndex: json['lifted_index'] as int,
    );

Map<String, dynamic> _$$_WeatherRawDataToJson(_$_WeatherRawData instance) =>
    <String, dynamic>{
      'timepoint': instance.timepoint,
      'cloudcover': instance.cloudcover,
      'lifted_index': instance.liftedIndex,
    };

_$_WeatherRaw _$$_WeatherRawFromJson(Map<String, dynamic> json) =>
    _$_WeatherRaw(
      product: json['product'] as String,
      init: json['init'] as String,
      dataSeries: (json['dataseries'] as List<dynamic>)
          .map((e) => WeatherRawData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherRawToJson(_$_WeatherRaw instance) =>
    <String, dynamic>{
      'product': instance.product,
      'init': instance.init,
      'dataseries': instance.dataSeries,
    };
