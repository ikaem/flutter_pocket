// test/presentation/blocs/cars_list/bloc_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';

import '../../../data/data_sources/cars_local/mock_data_sources.dart';

void main() {
  setupLocator();

  const tester = 'BAGRA !!!!!!!!!!!!!!!!!!!!';
  print('test - $tester');

// get cars list bloc from injected dependencies
  final CarsListBloc carsListBloc = locator<CarsListBloc>();

  test('List of cars is sorted in alphabetical order', () async {
    // now we inject test provider
    carsListBloc.injectDataSourceForTest(CarsMockDataSource());
    await carsListBloc.loadItems();

    // what do we get form this
    // so this actually gets a stream - and it returns list of those events
    final List<CarsListValue> firstEventStreamItems =
        await carsListBloc.carsListStream.take(1).toList();

    final List<CarEntity> carsList = firstEventStreamItems.first.cars ?? [];

    // now we just get data to compare a i guess with what the bloc above will give us
    final CarsListValue databaseCarsList =
        await CarsMockDataSource().loadCars();

    final List<CarEntity> databaseCars = databaseCarsList.cars ?? [];

    databaseCars.sort(carsListBloc.sortAlphabetically);
    carsList.sort(carsListBloc.sortAlphabetically);

    // now we test

    for (int i = 0; i < carsList.length; i++) {
// now wea want to check each element
      final CarEntity loadedCar = carsList.elementAt(i);
      final CarEntity databaseCar = carsList.elementAt(i);

      expect(loadedCar.title, equals(databaseCar.title));
      // expect(loadedCar.title, isNot(equals(databaseCar.title)));
    }
  });
}
