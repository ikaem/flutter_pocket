import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';

class PlayersHiveDbRepository implements PlayersDbRepository {
  const PlayersHiveDbRepository({
    required this.playersDbApi,
  });

  final PlayersDbApi playersDbApi;

// TODO this id should be the one we have in firebase
  @override
  Future<PlayerDbDTO> getPlayer(String id) async {
    final dto = playersDbApi.getPlayer(id);

    return dto;
  }

  @override
  Future<List<PlayerDbDTO>> getPlayers() async {
    final dtos = await playersDbApi.getPlayers();

    return dtos;
  }

  @override
  Future<void> savePlayers(List<Player> players) async {
    // TODO: implement savePlayers
    // throw UnimplementedError();

    final List<PlayerDbDTO> dtos = players
        .map<PlayerDbDTO>(
          (player) => PlayerDbDTO.fromPlayer(player),
        )
        .toList();

    // TODO eventually, do make a function out of this
    final Map<String, PlayerDbDTO> map = {
      for (var dto in dtos) dto.id: dto,
    };

    await playersDbApi.savePlayers(map);
  }

  @override
  Future<void> savePlayer(Player player) async {
    // TODO: implement savePlayers
    // throw UnimplementedError();

    final PlayerDbDTO dto = PlayerDbDTO.fromPlayer(player);

    await playersDbApi.savePlayer(dto);
  }
}
