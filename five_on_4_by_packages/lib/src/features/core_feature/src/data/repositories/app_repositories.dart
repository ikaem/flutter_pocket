import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/data/data.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/data/repositories/theme_mode_repository/repository.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/repositories/repositories.dart';

class AppRepositories {
  AppRepositories({
    required this.appDataSources,
  });

  final AppDataSources appDataSources;

  late final AuthApiRepository authApiRepository = AuthMockApiRepository(
    authApi: appDataSources.authApi,
  );

  late final AuthDBApiRepository authDbApiRepository = AuthHiveDBApiRepository(
    authDbApi: appDataSources.authDbApi,
  );

  late final PlayersRepository playersRepository = FirebasePlayersRepository(
    api: appDataSources.playersApi,
  );

  late final PlayersDbRepository playersDbRepository = PlayersHiveDbRepository(
    playersDbApi: appDataSources.playersDbApi,
  );

  late final WeatherRepository weatherRepository = WeatherOpenMeteoRepository(
    api: appDataSources.weatherApi,
  );

  late final MatchesAppRepository matchesAppRepository = MatchesAppRepository(
    matchesLocalApi: appDataSources.matchesAppLocalApi,
    matchesRemoteApi: appDataSources.matchesAppRemoteApi,
  );

  late final ThemeModeRepository themeModeRepository = ThemeModeRepository(
    themeModeDataSource: appDataSources.themeModeDataSource,
  );
}
