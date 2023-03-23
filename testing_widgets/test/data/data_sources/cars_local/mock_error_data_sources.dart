import 'dart:async';

import 'package:testing_widgets/data/data_sources/cars_local/data_source.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';

const String mockErrorMessage = 'This is an error message';

class CarsMockErrorDataSource implements CarsDataSource {
  @override
  Future<CarsListValue> loadCars() async {
    return const CarsListValue(
      cars: null,
      errorMessage: mockErrorMessage,
    );
  }
}
