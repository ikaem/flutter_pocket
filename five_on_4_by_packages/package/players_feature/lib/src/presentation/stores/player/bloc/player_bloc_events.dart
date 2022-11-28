abstract class PlayerEvent {
  const PlayerEvent();
}

class PlayerLoadEvent implements PlayerEvent {
  const PlayerLoadEvent({
    required this.playerId,
  });

  final String playerId;
}
