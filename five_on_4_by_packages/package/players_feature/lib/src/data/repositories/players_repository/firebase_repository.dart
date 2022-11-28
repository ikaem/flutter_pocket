import 'package:players_feature/src/data/data_sources/players_api/api.dart';
import 'package:players_feature/src/data/repositories/players_repository/players_repository.dart';
import 'package:players_feature/src/domain/models/player/player.dart';

class FirebasePlayersRepository implements PlayersRepository {
  const FirebasePlayersRepository({
    required this.api,
  });

  final PlayersApi api;

  @override
  Future<Player?> getPlayer(String id) async {
    final dto = await api.getOne(id);

    if (dto == null) return null;

    final player = Player.fromDTO(dto);

    return player;
  }
}
