import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';
import 'package:players_feature/src/presentation/stores/players/use_cases/get_players_use_case.dart';
import 'package:players_feature/src/presentation/stores/players/use_cases/search_players_use_case.dart';

class PlayersUseCases {
  PlayersUseCases({
    required this.playersRepository,

    // TODO remove this wrapper eventually, make players use cases all one single class, not class that wraps classes
    required this.playersDbRepository,
    required this.appLogger,
  });

  final PlayersRepository playersRepository;
  final PlayersDbRepository playersDbRepository;
  final AppLogger appLogger;

  late final GetPlayersUseCase getPlayersUseCase = GetPlayersUseCase(
    playersRepository: playersRepository,
    playersDbRepository: playersDbRepository,
    appLogger: appLogger,
  );
  late final SearchPlayersUseCase searchPlayersUseCase = SearchPlayersUseCase(
    playersRepository: playersRepository,
  );
}
