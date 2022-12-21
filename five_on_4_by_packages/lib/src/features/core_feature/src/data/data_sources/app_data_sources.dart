import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
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

  late final AuthApi authApi = AuthMockApi();
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
}
