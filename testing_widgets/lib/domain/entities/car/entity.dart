import 'package:testing_widgets/utils/constants/cars_constants.dart';

class CarEntity {
  CarEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.pricePerDay,
    required this.isSelected,
    required this.features,
  });

  factory CarEntity.fromJson(Map<String, dynamic> json) {
    return CarEntity(
      id: json[CarsConstants.carsIdKey] as int,
      title: json[CarsConstants.carsTitleKey] as String,
      description: json[CarsConstants.carsDescriptionKey] as String,
      url: json[CarsConstants.carsUrlKey] as String,
      pricePerDay: json[CarsConstants.carsPricePerDayKey] as double,
      isSelected: false,
      features: json[CarsConstants.carsFeaturesKey] as List<dynamic>,
    );
  }

  final int id;
  final String title;
  final String description;
  final String url;
  final double pricePerDay;
  final List<dynamic> features;

  // note that this is not final - this could change
  bool isSelected;
}
