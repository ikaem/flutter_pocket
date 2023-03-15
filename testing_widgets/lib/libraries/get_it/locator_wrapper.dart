// TODO could this be a class

import 'package:get_it/get_it.dart';
import 'package:testing_widgets/data/data_sources/cars_local/app_data_source.dart';
import 'package:testing_widgets/data/data_sources/cars_local/data_source.dart';
import 'package:testing_widgets/presentation/blocs/car_detail/bloc.dart';
import 'package:testing_widgets/presentation/blocs/cars_list/bloc.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<CarsDataSource>(CarsAppDataSource());
  locator.registerSingleton<CarsListBloc>(CarsListBloc());
  locator.registerSingleton<CarDetailsBloc>(CarDetailsBloc());
}
