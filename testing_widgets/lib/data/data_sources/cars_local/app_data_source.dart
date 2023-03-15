import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:testing_widgets/data/data_sources/cars_local/data_source.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';

class CarsAppDataSource implements CarsDataSource {
  @override
  Future<CarsListValue> loadCars() async {
    try {
      final String jsonData = await rootBundle.loadString('assets/data.json');
      final decodedData = jsonDecode(jsonData);
      final carsData = decodedData['cars'] as Iterable;

      final carsParsed = List<Map<String, dynamic>>.from(carsData);

      final List<CarEntity> cars = carsParsed.map(CarEntity.fromJson).toList();

      return CarsListValue(cars: cars, errorMessage: null);
    } catch (e) {
      return CarsListValue(cars: null, errorMessage: e.toString());
    }
  }
}
