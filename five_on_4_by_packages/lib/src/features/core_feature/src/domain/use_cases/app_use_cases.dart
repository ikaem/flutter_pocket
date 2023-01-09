import 'package:five_on_4_by_packages/src/features/auth_feature/src/domain/use_cases/auth_use_cases/auth_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/data/repositories/app_repositories.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/formz/formz.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/logger/app_logger.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/use_cases/matches_use_cases.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/src/presentation/presentation.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/presentation/stores/weather/use_cases/weather_use_cases.dart';

class AppUseCases {
  AppUseCases({
    required this.appRepositories,
    required this.appLogger,
    required this.inputsValidation,
  });

  final AppRepositories appRepositories;
  final AppLogger appLogger;
  final InputsValidation inputsValidation;

  late final AuthUseCases authUseCases = AuthUseCases(
    authApiRepository: appRepositories.authApiRepository,
    // TODO maybe repositories should be handling both data sources?
    authDBApiRepository: appRepositories.authDbApiRepository,
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

  late final MatchesUseCases matchesUseCases = MatchesUseCases(
    matchesApiRepository: appRepositories.matchesAppRepository,
    appLogger: appLogger,
  );
}
