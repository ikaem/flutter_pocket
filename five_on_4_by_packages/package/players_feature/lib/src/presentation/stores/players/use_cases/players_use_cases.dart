import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';

class PlayersUseCases {
  PlayersUseCases({
    required this.playersRepository,
    required this.playersDbRepository,
    required this.appLogger,
  });

  final PlayersRepository playersRepository;
  final PlayersDbRepository playersDbRepository;
  final AppLogger appLogger;

// TODO this is probably not needed to have a seaprate class for this - a metod would do
  // late final GetPlayersUseCase getPlayersUseCase = GetPlayersUseCase(
  //   playersRepository: playersRepository,
  //   playersDbRepository: playersDbRepository,
  //   appLogger: appLogger,
  // );
  // late final SearchPlayersUseCase searchPlayersUseCase = SearchPlayersUseCase(
  //   playersRepository: playersRepository,
  // );

  Future<Player> getPlayer(String playerId) async {
    final PlayerApiDTO dto = await playersRepository.getPlayer(playerId);

    final player = Player.fromDTO(dto);

    return player;
  }

  Future<List<Player>> getPlayers(String? searchTerm) async {
// TODO if there is no connection, would probably get players from db
// TODO implement connection check

    final List<PlayerApiDTO> dtos =
        await playersRepository.getPlayers(searchTerm);

    final List<Player> players =
        dtos.map((dto) => Player.fromDTO(dto)).toList();

    // TODO update database
    // TODO test only to check one

    // await playersDbRepository.savePlayers(players);

    // TODO this is test only
    final Player testPlayer1 = Player(id: 1.toString(), nickname: "Karlo");
    final Player testPlayer2 = Player(id: 2.toString(), nickname: "Ivan");

    await playersDbRepository.savePlayers([
      testPlayer1,
      testPlayer2,
    ]);

    return players;
  }

  Stream<PlayersState> searchPlayers(String? searchTerm) async* {
// TODO eventually, this would need to check
// all required filters
// all required fetch poloicities
// and also, it needs to check if we are online - if we are not online, to fetch data from the local repsotiroy - the database
    if (searchTerm == null) {
      // TODO get players might not need search term
      final dtos = await playersRepository.getPlayers(searchTerm);

      final players = dtos.map((dto) => Player.fromDTO(dto)).toList();

      yield PlayersDataState(players: players);
      // TODO no need to return later, if we use this only to show initial data
      return;
    }

    final dtos = await playersRepository.searchPlayers(searchTerm);

    final players = dtos.map((dto) => Player.fromDTO(dto)).toList();

    yield PlayersDataState(players: players);
  }
}
