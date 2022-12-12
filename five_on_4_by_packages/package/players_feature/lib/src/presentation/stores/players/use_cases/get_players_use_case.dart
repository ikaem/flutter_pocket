import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';

// TODO this should all be one use case  for all player related

class GetPlayersUseCase {
  const GetPlayersUseCase({
    required this.playersRepository,
    required this.playersDbRepository,
    required this.appLogger,
  });

  final PlayersRepository playersRepository;
  final PlayersDbRepository playersDbRepository;
  final AppLogger appLogger;

  Future<List<Player>> getPlayers(String? searchTerm) async {
// TODO if there is no connection, would probably get players from db
// TODO implement connection check

    final List<PlayerDTO> dtos = await playersRepository.getPlayers(searchTerm);

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

    // await playersDbRepository.savePlayer(testPlayer1);

    // final foundPlayerFromDB = await playersDbRepository.getPlayer(1.toString());

    // appLogger.log(
    //     logLevel: LogLevel.info, message: "This is player: $foundPlayerFromDB");

    return players;
  }
}
