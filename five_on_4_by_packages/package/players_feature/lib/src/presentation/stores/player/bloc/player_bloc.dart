import "package:flutter_bloc/flutter_bloc.dart";
import 'package:players_feature/players_feature.dart';
import 'package:players_feature/src/domain/models/player/player.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc({
    required this.playersRepository,
  }) : super(const PlayerInitialState()) {
    on<PlayerLoadEvent>(_onPlayerLoadEvent);
  }

  PlayersRepository playersRepository;

  Future<void> _onPlayerLoadEvent(
      PlayerLoadEvent event, Emitter<PlayerState> emitter) async {
    try {
      emitter(const PlayerLoadingState());

      final Player? player = await playersRepository.getPlayer(event.playerId);

      emitter(PlayerDataState(player: player));
    } catch (e) {
      emitter(PlayerErrorState(message: e.toString()));
    }
  }
}
