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
    }

    // TODO only this possibly needs to return a stream - because maybe if we initially want to emit some other state - or maybe initially emit some other data - such as locally cached data to be shown until we fetch new data

// TODO this is only test for now
    yield const PlayersDataState(players: []);
  }
}
