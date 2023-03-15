import 'dart:async';

import 'package:rxdart/subjects.dart';
import 'package:testing_widgets/data/data_sources/cars_local/data_source.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';

class CarsListBloc {
  CarsListBloc();
  // here we get injected data - i dont like it - i prefere passing dependnecies instead
  // not final because there is test ijector too
  CarsDataSource _carsDataSource = locator<CarsDataSource>();

  final BehaviorSubject<CarsListValue> _carsListSubject =
      BehaviorSubject<CarsListValue>();

  StreamSink<CarsListValue> get _carsListSink => _carsListSubject.sink;
  Stream<CarsListValue> get carsListStream => _carsListSubject.stream;

  // now load items
  Future<void> loadItems() async {
    try {
      final CarsListValue carsList = await _carsDataSource.loadCars();
      final List<CarEntity>? cars = carsList.cars;

      if (cars == null) {
        throw CarsListException();
      }

      _carsListSink.add(carsList..cars?.sort(sortAlphabetically));
    } catch (e) {
      _carsListSink.addError(CarsListException());
    }
  }

  void onSelectItem(int itemId) {
    // they create subscription here - i hope we actually get all data
    // why not just loop throguh last data and emit it all
    // i dont like this stream thing
    // we could use first on stream, or value on behavior subject too - in htat case we would have to wait there is actually data in the value, because it would throw error otherwise
    StreamSubscription<CarsListValue>? subscription;
    subscription = carsListStream.listen((carsList) {
      final List<CarEntity> cars = carsList.cars ?? [];
      final newCarsWithSelectedItem = cars.map((car) {
        if (car.id != itemId) return car;

        final CarEntity selectedCar = CarEntity(
          id: car.id,
          title: car.title,
          description: car.description,
          url: car.url,
          pricePerDay: car.pricePerDay,
          isSelected: true,
          features: car.features,
        );

        return selectedCar;
      }).toList();

      final CarsListValue newCarsList =
          CarsListValue(cars: newCarsWithSelectedItem, errorMessage: null);

      _carsListSink.add(newCarsList);
      // can we really do this in the body of listen
      subscription?.cancel();
    });

// TODO note sure if this should be done here
    // subscription.cancel();
  }

  void onDeselectItem(int itemId) {
    StreamSubscription<CarsListValue>? subscription;

    subscription = carsListStream.listen((carsList) {
      final List<CarEntity> cars = carsList.cars ?? [];

      final newCarsWithSelectedItem = cars.map((car) {
        if (car.id != itemId) return car;

        final CarEntity selectedCar = CarEntity(
          id: car.id,
          title: car.title,
          description: car.description,
          url: car.url,
          pricePerDay: car.pricePerDay,
          isSelected: false,
          features: car.features,
        );

        return selectedCar;
      }).toList();

      final CarsListValue newCarsList =
          CarsListValue(cars: newCarsWithSelectedItem, errorMessage: null);

      _carsListSink.add(newCarsList);
      // can we really do this in the body of listen
      subscription?.cancel();
    });
  }

  void dispose() {
    _carsListSubject.close();
  }

  // ok, tis is for testing
  void injectDataSourceForTest(CarsDataSource dataSource) {
    _carsDataSource = dataSource;
  }

  int sortAlphabetically(CarEntity a, CarEntity b) =>
      a.title.toLowerCase().compareTo(b.title.toLowerCase());
}

// TODO errors here - move to domain
class CarsListException implements Exception {}
