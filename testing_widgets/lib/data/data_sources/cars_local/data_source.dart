import 'package:testing_widgets/domain/values/cars_list_value.dart';

abstract class CarsDataSource {
  Future<CarsListValue> loadCars();
}
