import "package:auth_feature/auth_feature.dart";
import 'package:core_feature/src/data/repositories/app_repositories.dart';
import 'package:core_feature/src/libraries/libraries.dart';
import 'package:players_feature/players_feature.dart';
import 'package:weather_feature/weather_feature.dart';

class AppUseCases {
  AppUseCases(
      {required this.appRepositories,
      required this.appLogger,
      required this.inputsValidation});

  final AppRepositories appRepositories;
  final AppLogger appLogger;
  final InputsValidation inputsValidation;

  late final AuthUseCases authUseCases = AuthUseCases(
    authApiRepository: appRepositories.authApiRepository,
    inputsValidation: inputsValidation,
  );

  late final PlayersUseCases playersUseCases = PlayersUseCases(
    playersRepository: appRepositories.playersRepository,
    playersDbRepository: appRepositories.playersDbRepository,
    appLogger: appLogger,
  );

  late final WeatherUseCases weatherUseCases = WeatherUseCases(
    weatherRepository: appRepositories.weatherRepository,
  );
}
