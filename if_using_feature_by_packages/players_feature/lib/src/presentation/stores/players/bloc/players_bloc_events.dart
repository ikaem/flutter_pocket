abstract class PlayersEvent {
  const PlayersEvent();
}

class PlayersLoadEvent implements PlayersEvent {
  const PlayersLoadEvent({
    required this.searchTerm,
  });

  final String? searchTerm;
}

class PlayersSearchEvent implements PlayersEvent {
  const PlayersSearchEvent({
    required this.searchTerm,
  });

  final String? searchTerm;
}
