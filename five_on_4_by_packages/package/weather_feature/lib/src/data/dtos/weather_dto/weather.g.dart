// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDataDTO _$$_WeatherDataDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherDataDTO(
      timepoint: json['timepoint'] as int,
      cloudcover: json['cloudcover'] as int,
      liftedIndex: json['lifted_index'] as int,
    );

Map<String, dynamic> _$$_WeatherDataDTOToJson(_$_WeatherDataDTO instance) =>
    <String, dynamic>{
      'timepoint': instance.timepoint,
      'cloudcover': instance.cloudcover,
      'lifted_index': instance.liftedIndex,
    };

_$_WeatherDTO _$$_WeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherDTO(
      product: json['product'] as String,
      init: json['init'] as String,
      dataSeries: (json['dataseries'] as List<dynamic>)
          .map((e) => WeatherDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDTOToJson(_$_WeatherDTO instance) =>
    <String, dynamic>{
      'product': instance.product,
      'init': instance.init,
      'dataseries': instance.dataSeries,
    };
