import 'package:players_feature/src/domain/models/player/player.dart';

abstract class PlayersRepository {
  Future<Player?> getPlayer(String id);
}
