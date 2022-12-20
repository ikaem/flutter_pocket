import 'package:five_on_4_by_packages/src/features/players_feature/src/data/dtos/player_dto/dto.dart';

abstract class PlayersRepository {
  Future<PlayerApiDTO> getPlayer(String id);
  // TODO this should probably also return a dto
  Future<List<PlayerApiDTO>> getPlayers(String? searchTerm);
  // TODO stream just because
  Future<List<PlayerApiDTO>> searchPlayers(String searchTerm);
}
