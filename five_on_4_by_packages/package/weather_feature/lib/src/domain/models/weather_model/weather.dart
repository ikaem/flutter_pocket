import "package:equatable/equatable.dart";

import 'package:weather_feature/src/data/dtos/weather_dto/weather.dart';

// TODO this could also use freezed eventually
class Weather extends Equatable {
  const Weather({
    required this.product,
    required this.init,
    required this.timepoint,
    required this.cloudcover,
    required this.liftedIndex,
  });

  final String product;
  final String init;
  final int timepoint;
  final int cloudcover;
  final int liftedIndex;

// making named constructor
  factory Weather.fromDTO(WeatherDTO dto) {
    return Weather(
      product: dto.product,
      init: dto.init,
      timepoint: dto.dataSeries[0].timepoint,
      cloudcover: dto.dataSeries[0].cloudcover,
      liftedIndex: dto.dataSeries[0].liftedIndex,
    );
  }

  @override
  List<Object?> get props => [
        product,
        init,
        timepoint,
        cloudcover,
        liftedIndex,
      ];
}
