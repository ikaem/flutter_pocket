import 'package:auth_feature/auth_feature.dart';
import 'package:core_feature/src/data/data_sources/app_data_sources.dart';
import 'package:players_feature/players_feature.dart';
import 'package:weather_feature/weather_feature.dart';

class AppRepositories {
  AppRepositories({
    required this.appDataSources,
  });

  final AppDataSources appDataSources;

  late final AuthApiRepository authApiRepository = AuthMockApiRepository(
    authApi: appDataSources.authApi,
  );

  late final PlayersRepository playersRepository = FirebasePlayersRepository(
    api: appDataSources.playersApi,
  );

  late final PlayersDbRepository playersDbRepository = PlayersHiveDbRepository(
    playersDbApi: appDataSources.playersDbApi,
  );

  late final WeatherRepository weatherRepository = WeatherRepository7Timer(
    api: appDataSources.weatherApi,
  );
}
