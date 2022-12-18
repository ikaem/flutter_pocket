// import "package:flutter_bloc/flutter_bloc.dart";
import "package:bloc/bloc.dart";
import 'package:core_feature/core_feature.dart';
import "package:rxdart/rxdart.dart";
import 'package:players_feature/src/domain/models/player/player.dart';
import 'package:players_feature/src/presentation/stores/players/exports.dart';

class PlayersBloc extends Bloc<PlayersEvent, PlayersState> {
  PlayersBloc({
    required this.playersUseCases,
    required this.appLogger,
  }) : super(const PlayersInitialState()) {
    on<PlayersLoadEvent>(_onPlayersLoadEvent);
    on<PlayersSearchEvent>(
      _onPlayersSearchEvent,
      transformer: (events, mapper) {
        // TODO this is make sure we debounce

        return events
            .debounceTime(const Duration(seconds: 2))
            .asyncExpand((event) => mapper(event));
      },
    );
  }

  final PlayersUseCases playersUseCases;
  final AppLogger appLogger;

  Future<void> _onPlayersLoadEvent(
      PlayersLoadEvent event, Emitter<PlayersState> emitter) async {
    try {
      emitter(const PlayersLoadingState());

      final List<Player> players =
          await playersUseCases.getPlayers(event.searchTerm);

      emitter(PlayersDataState(players: players));
    } catch (e) {
      emitter(PlayersErrorState(message: e.toString()));
    }
  }

  Future<void> _onPlayersSearchEvent(
    PlayersSearchEvent event,
    Emitter<PlayersState> emitter,
  ) async {
    try {
      emitter(const PlayersLoadingState());

      // final List<Player> players =
      //     await getPlayersUseCase.getPlayers(event.searchTerm);

      // emitter(PlayersDataState(players: players));

// TODO this now should be returning a stream of futures

      final Stream<PlayersState> playersSearchStream =
          playersUseCases.searchPlayers(event.searchTerm);

/* TODO note that return of this on each is a future in the end */
      return emitter.onEach<PlayersState>(
        playersSearchStream,
        onData: (data) {
          // TODO test
          emitter(data);
        },
      );
    } catch (e) {
      // TODO test
      appLogger.log(
        logLevel: LogLevel.error,
        message: "There was an error with loading players",
        error: e,
      );
      emitter(PlayersErrorState(message: e.toString()));
    }
  }
}
