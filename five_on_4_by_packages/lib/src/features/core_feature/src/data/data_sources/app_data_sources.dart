import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data_sources/matches_local_api/matches_app_local_api.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:five_on_4_by_packages/src/features/weather_feature/src/data/data-sources/data_sources.dart';

class AppDataSources {
  AppDataSources({
    required this.httpWrapper,
    required this.fireStore,
    required this.database,
    required this.appLogger,
  });

  final HttpWrapper httpWrapper;
  final FireStore fireStore;
  final DB database;
  final AppLogger appLogger;

  late final AuthRemoteApi authApi = AuthMockRemoteApi();
  late final AuthDbApi authDbApi = AuthHiveDbApi(
    database: database,
    appLogger: appLogger,
  );

  late final PlayersDbApi playersDbApi = PlayersDbApi(
    database: database,
  );

  late final PlayersApi playersApi = FireStorePlayersApi(
    fireStore: fireStore,
  );

  late final WeatherApi weatherApi = WeatherApiOpenMeteo(
    httpWrapper: httpWrapper,
  );

  late final MatchesAppLocalApi matchesAppLocalApi = MatchesAppLocalApi(
    database: database,
  );

  late final MatchesAppRemoteApi matchesAppRemoteApi = MatchesAppRemoteApi(
    fireStore: fireStore,
    appLogger: appLogger,
  );
}
