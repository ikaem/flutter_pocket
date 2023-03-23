// test/presentation/screens/cars_list/screen.dart
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing_widgets/domain/entities/car/entity.dart';
import 'package:testing_widgets/domain/values/cars_list_value.dart';
import 'package:testing_widgets/libraries/get_it/locator_wrapper.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';
import 'package:testing_widgets/presentation/screens/cars_list/screen.dart';

import '../../../data/data_sources/cars_local/mock_data_sources.dart';
import '../../../data/data_sources/cars_local/mock_error_data_sources.dart';

void main() {
  setupLocator();
  final CarsListBloc carsListBloc = locator<CarsListBloc>();
  const test = 'test';
  log('test - $test');

  testWidgets(
    'Cars are displayed with summary details, selected car is colored in blue',
    (widgetTester) async {
      final CarsMockDataSource carsMockDataSource = CarsMockDataSource();
      // need to in ject test provider
      carsListBloc.injectDataSourceForTest(carsMockDataSource);

      final CarsListValue carsListValue = await carsMockDataSource.loadCars();
      final List<CarEntity> carsList = carsListValue.cars ?? [];

      // now we want to load data
      // await carsListBloc.loadItems();

      // // now get first stream event - it is list of cars, but we will only get one item there
      // TODO this does not work - i guess some event is needed from widget for this to load
      // final List<CarsListValue> firstEventStreamItems =
      //     await carsListBloc.carsListStream.take(1).toList();

      // final List<CarEntity> carsList = firstEventStreamItems.first.cars ?? [];
      // carsList.sort(carsListBloc.sortAlphabetically);

      // // this is rendering the widget
      await widgetTester.pumpWidget(const CarsListScreenWrapper());
      await widgetTester.pump(Duration.zero);

      final Finder carListKey = find.byKey(const Key('cars_list'));
      expect(carListKey, findsOneWidget);

      await _verifyAllCarDetails(cars: carsList, widgetTester: widgetTester);

      // selecting this now
      carsListBloc.onSelectItem(1);

      // now we define which widget we want to find by predicate
      // bool
      final Finder selectedWidgetsFinder = find.byWidgetPredicate(
        (widget) => widget is Card && widget.color == Colors.blue.shade200,
      );

      final Finder unselectedWidgetsFinder = find.byWidgetPredicate(
        (widget) => widget is Card && widget.color == Colors.white,
      );

      expect(selectedWidgetsFinder, findsOneWidget);
      expect(unselectedWidgetsFinder, findsNWidgets(5));
    },
  );

  testWidgets(
      'After encounter error and updating stream, widget updates correctly',
      (widgetTester) async {
    carsListBloc.injectDataSourceForTest(CarsMockErrorDataSource());

    await widgetTester.pumpWidget(const CarsListScreenWrapper());
    await widgetTester.pump(Duration.zero);

    final Finder error
  });
}

// THIS IS TESTING that all data is there for a car - i would put it in a separate test
Future<void> _verifyAllCarDetails({
  required List<CarEntity> cars,
  required WidgetTester widgetTester,
}) async {
// now map through all cars
  for (final car in cars) {
    final Finder carTitleFinder = find.text(car.title);
    // this is jsut some regex for price per data
    final Finder carPricePerDayFinder = find.text(
      r'$%@/day'.replaceFirst('%@', car.pricePerDay.toStringAsFixed(2)),
    );

    await widgetTester.ensureVisible(carTitleFinder);
    expect(carTitleFinder, findsOneWidget);

    await widgetTester.ensureVisible(carPricePerDayFinder);
    expect(carPricePerDayFinder, findsOneWidget);
  }
}

// TODO this is only so we have materialApp around the widget
class CarsListScreenWrapper extends StatelessWidget {
  const CarsListScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarsListScreen(),
    );
  }
}
