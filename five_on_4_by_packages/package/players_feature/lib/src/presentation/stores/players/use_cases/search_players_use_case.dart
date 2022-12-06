import 'package:players_feature/players_feature.dart';

class SearchPlayersUseCase {
  const SearchPlayersUseCase({
    required this.playersRepository,
  });

  final PlayersRepository playersRepository;

  // Future<List<Player>> getPlayers(String? searchTerm) async {
  //   final dtos = await playersRepository.getPlayers(searchTerm);

  //   final players = dtos.map((dto) => Player.fromDTO(dto)).toList();

  //   return players;
  // }

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
      return;
    }

    final dtos = await playersRepository.searchPlayers(searchTerm);

    final players = dtos.map((dto) => Player.fromDTO(dto)).toList();

    yield PlayersDataState(players: players);
  }
}
