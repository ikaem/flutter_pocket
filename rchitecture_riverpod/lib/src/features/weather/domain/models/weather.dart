import 'package:rchitecture_riverpod/src/features/weather/data/dto/weather_raw.dart';

class Weather {
  Weather({
    required this.product,
    required this.init,
    required this.timepoint,
    required this.cloudcover,
    required this.liftedIndex,
  });

  late final String product;
  late final String init;
  late final int timepoint;
  late final int cloudcover;
  late final int liftedIndex;

// making named constructor
  Weather.fromRaw(WeatherRaw raw) {
    product = raw.product;
    init = raw.init;
    timepoint = raw.dataSeries[0].timepoint;
    cloudcover = raw.dataSeries[0].cloudcover;
    liftedIndex = raw.dataSeries[0].liftedIndex;
  }
}
