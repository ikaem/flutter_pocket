import 'package:players_feature/src/data/dtos/player_dto/dto.dart';

abstract class PlayersApi {
  Future<PlayerDTO?> getOne(String id);
}
