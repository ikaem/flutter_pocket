import 'package:players_feature/players_feature.dart';
import 'package:players_feature/src/presentation/stores/players/use_cases/get_players_use_case.dart';
import 'package:players_feature/src/presentation/stores/players/use_cases/search_players_use_case.dart';

class PlayersUseCases {
  PlayersUseCases({
    required this.playersRepository,
  });

  final PlayersRepository playersRepository;

  late final GetPlayersUseCase getPlayersUseCase = GetPlayersUseCase(
    playersRepository: playersRepository,
  );
  late final SearchPlayersUseCase searchPlayersUseCase = SearchPlayersUseCase(
    playersRepository: playersRepository,
  );
}
