// TODO possibly need to do it with equatable

import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';

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
