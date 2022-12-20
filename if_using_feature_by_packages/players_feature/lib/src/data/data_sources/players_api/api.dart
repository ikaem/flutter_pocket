import 'package:players_feature/src/data/dtos/player_dto/dto.dart';

abstract class PlayersApi {
  // TODO probably can have this iwhtout optional - just throw error if there is no data
  Future<PlayerApiDTO> getOne(String id);
  Future<List<PlayerApiDTO>> getMany(String? searchTerm);
  Future<List<PlayerApiDTO>> searchMany(String searchTerm);
}
