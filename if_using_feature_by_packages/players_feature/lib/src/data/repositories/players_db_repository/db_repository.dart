import 'package:players_feature/players_feature.dart';

abstract class PlayersDbRepository {
// TODO this id should be the one we have in firebase
  Future<PlayerDbDTO> getPlayer(String id);
  Future<List<PlayerDbDTO>> getPlayers();
  // TODO because this rešpository does not need to know about api repository - just about general model
  Future<void> savePlayers(List<Player> players);
  Future<void> savePlayer(Player player);
}
