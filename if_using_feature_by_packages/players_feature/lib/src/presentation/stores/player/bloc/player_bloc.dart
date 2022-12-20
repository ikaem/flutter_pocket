import "package:flutter_bloc/flutter_bloc.dart";
import 'package:players_feature/players_feature.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc({
    required this.playersUseCases,
  }) : super(const PlayerInitialState()) {
    on<PlayerLoadEvent>(_onPlayerLoadEvent);
  }

  PlayersUseCases playersUseCases;

  Future<void> _onPlayerLoadEvent(
      PlayerLoadEvent event, Emitter<PlayerState> emitter) async {
    try {
      emitter(const PlayerLoadingState());

      final Player player = await playersUseCases.getPlayer(event.playerId);

      emitter(PlayerDataState(player: player));
    } catch (e) {
      emitter(PlayerErrorState(message: e.toString()));
    }
  }
}
