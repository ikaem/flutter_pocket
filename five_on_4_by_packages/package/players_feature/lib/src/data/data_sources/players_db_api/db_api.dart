import 'package:core_feature/core_feature.dart';
import 'package:players_feature/players_feature.dart';

class PlayersDbApi {
  // TODO we need database here

  const PlayersDbApi({
    required this.database,
  });

  final DB database;

// TODO this only needs to be future if we lazily open boxes it sees
  // Future<PlayerDbDTO> getPlayer({
  //   required String id,
  // }) async {
  //   final PlayerDbDTO dto = await database.getItem()
  // }

  Future<void> savePlayer(PlayerDbDTO dto) async {
    await database.addBoxItem(
      boxName: DB.kPlayersBox,
      item: dto,
      itemId: dto.id,
    );
  }

  Future<void> savePlayers(Map<String, PlayerDbDTO> dtos) async {
    await database.addBoxItems(
      boxName: DB.kPlayersBox,
      items: dtos,
    );
  }

  Future<List<PlayerDbDTO>> getPlayers() async {
    final dtos =
        await database.getBoxItems<PlayerDbDTO>(boxName: DB.kPlayersBox);

    return dtos.toList();
  }

  Future<PlayerDbDTO> getPlayer(
    String itemId,
  ) async {
    final dto = await database.getBoxItem<PlayerDbDTO>(
        boxName: DB.kPlayersBox, itemId: itemId);

    return dto;
  }
}
