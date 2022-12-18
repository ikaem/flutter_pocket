import 'package:core_feature/core_feature.dart';
import "package:auth_feature/auth_feature.dart";
import 'package:players_feature/players_feature.dart';
import 'package:weather_feature/weather_feature.dart';

class AppDataSources {
  AppDataSources({
    required this.httpWrapper,
    required this.fireStore,
    required this.database,
  });

  final HttpWrapper httpWrapper;
  final FireStore fireStore;
  final DB database;

// TODO temp calling mock api
  late final AuthApi authApi = AuthMockApi();

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
