import 'dart:async';

import 'package:rxdart/subjects.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';

class CarDetailsBloc {
  // here they actually grab hold of bloc instance, which i dont like
  // CarsDataSource _carsDataSource = locator<CarsDataSource>();
  final CarsListBloc _carsListBloc = locator<CarsListBloc>();

  final BehaviorSubject<CarEntity?> _carSubject = BehaviorSubject<CarEntity?>();

  StreamSink<CarEntity?> get _carSink => _carSubject.sink;
  Stream<CarEntity?> get carStream => _carSubject.stream;

  // also some hlpetrs i guess
  int? _currentCarId;
  StreamSubscription<CarsListValue>? _carsListSubscription;

  Future<void> getItem(int id) async {
    // first reset i guess
    _carSink.add(null);
    if (_carsListSubscription != null) {
      await _carsListSubscription?.cancel();
      _carsListSubscription = null;
    }

    // now we go again
    _currentCarId = id;

    _carsListSubscription = _carsListBloc.carsListStream.listen((carsList) {
      final List<CarEntity> cars = carsList.cars ?? [];

      for (final car in cars) {
        if (car.id == _currentCarId) {
          _carSink.add(car);

          break;
        }
      }
    });
  }

  void dispose() {
    _carsListSubscription?.cancel();
    _carSubject.close();
  }
}
