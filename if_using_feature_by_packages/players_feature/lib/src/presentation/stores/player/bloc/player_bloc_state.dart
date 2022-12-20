// TODO possibly need to do it with equatable
import 'package:players_feature/src/domain/models/player/player.dart';

abstract class PlayerState {
  const PlayerState();
}

class PlayerInitialState implements PlayerState {
  const PlayerInitialState();
}

class PlayerLoadingState implements PlayerState {
  const PlayerLoadingState();
}

class PlayerDataState implements PlayerState {
  const PlayerDataState({
    required this.player,
  });

  final Player? player;
}

class PlayerErrorState implements PlayerState {
  const PlayerErrorState({
    required this.message,
  });

  final String message;
}
