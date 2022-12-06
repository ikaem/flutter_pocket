import 'package:players_feature/src/data/data_sources/players_api/api.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';
import 'package:players_feature/src/data/repositories/players_repository/players_repository.dart';
import 'package:players_feature/src/domain/models/player/player.dart';

class FirebasePlayersRepository implements PlayersRepository {
  const FirebasePlayersRepository({
    required this.api,
  });

  final PlayersApi api;

  @override
  // TODO this should probably also return dto
  Future<Player?> getPlayer(String id) async {
    final dto = await api.getOne(id);

    if (dto == null) return null;

    final player = Player.fromDTO(dto);

    return player;
  }

  @override
  // TODO this should probably also return dto
  Future<List<PlayerDTO>> getPlayers(String? searchTerm) async {
    final dtos = await api.getMany(searchTerm);

    return dtos;
  }

  @override
  Future<List<PlayerDTO>> searchPlayers(String searchTerm) async {
    // this possibly does nto need to return a stream - this will always return just its own data

    final dtos = await api.searchMany(searchTerm);

    return dtos;
  }
}
