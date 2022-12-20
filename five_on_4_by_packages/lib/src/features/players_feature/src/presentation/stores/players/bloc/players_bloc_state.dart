// TODO possibly need to do it with equatable
import 'package:five_on_4_by_packages/src/features/players_feature/src/domain/exports.dart';

abstract class PlayersState {
  const PlayersState();
}

class PlayersInitialState implements PlayersState {
  const PlayersInitialState();
}

class PlayersLoadingState implements PlayersState {
  const PlayersLoadingState();
}

class PlayersDataState implements PlayersState {
  const PlayersDataState({
    required this.players,
  });

  final List<Player> players;
}

class PlayersErrorState implements PlayersState {
  const PlayersErrorState({
    required this.message,
  });

  final String message;
}
