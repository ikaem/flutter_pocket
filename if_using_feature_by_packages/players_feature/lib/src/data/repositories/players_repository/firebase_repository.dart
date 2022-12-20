import 'package:players_feature/src/data/data_sources/players_api/api.dart';
import 'package:players_feature/src/data/dtos/player_dto/dto.dart';
import 'package:players_feature/src/data/repositories/players_repository/players_repository.dart';

class FirebasePlayersRepository implements PlayersRepository {
  const FirebasePlayersRepository({
    required this.api,
  });

  final PlayersApi api;

  @override
  // TODO this should probably also return dto
  Future<PlayerApiDTO> getPlayer(String id) async {
    final dto = await api.getOne(id);

    return dto;
  }

  @override
  // TODO this should probably also return dto
  Future<List<PlayerApiDTO>> getPlayers(String? searchTerm) async {
    final dtos = await api.getMany(searchTerm);

    return dtos;
  }

  @override
  Future<List<PlayerApiDTO>> searchPlayers(String searchTerm) async {
    // this possibly does nto need to return a stream - this will always return just its own data

    final dtos = await api.searchMany(searchTerm);

    return dtos;
  }
}
