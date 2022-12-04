import 'package:players_feature/players_feature.dart';

class GetPlayersUseCase {
  const GetPlayersUseCase({
    required this.playersRepository,
  });

  final PlayersRepository playersRepository;

  Future<List<Player>> getPlayers(String? searchTerm) async {
    final dtos = await playersRepository.getPlayers(searchTerm);

    final players = dtos.map((dto) => Player.fromDTO(dto)).toList();

    return players;
  }
}
