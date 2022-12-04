import 'package:players_feature/src/data/dtos/player_dto/dto.dart';
import 'package:players_feature/src/domain/models/player/player.dart';

abstract class PlayersRepository {
  Future<Player?> getPlayer(String id);
  // TODO this should probably also return a dto
  Future<List<PlayerDTO>> getPlayers(String? searchTerm);
  // TODO stream just because
  Stream<PlayerDTO> searchPlayers(String searchTerm);
}
