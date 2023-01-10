// TODO use freezed for this later

// class MatchesBloc extends Bloc<MatchesBlocEvent, MatchesBlocState> {
//   // TODO
// }

import 'package:bloc_concurrency/bloc_concurrency.dart';
import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/use_cases/use_cases.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part "matches_bloc_events.dart";
part "matches_bloc_state.dart";

class MatchesBloc extends Bloc<MatchesBlocEvent, MatchesBlocState> {
  MatchesBloc({
    // TODO not sure if this is correct - how about we always pass in the user - because i dont want to mix features
    // TODO also, initializing this in the constructor is a bitch
    // TODO ALSO, if we are accessing this, we should be in the logged in state
    required this.authUseCases,
    required this.matchesUseCases,
    // TODO i would prefer this - we just get authenticatzed user here - and if we have auth user, we get their stuff , if not we get generic stuff
    // required this.auth,
  }) : super(const MatchesBlocState.initial()) {
    // TODO this listens for the
    // todo TEST
    // TODO not liking this
    // TODO could observer auth be a getter instead of a funciton
    // TODO we never did log this
    // authUseCases.observeAuth().listen((event) {
    //   // TODO not like this - but it seems to be the only way to do it
    //   // alternatively, we could pass in initial user - and get users data with taht
    //   // TODO note that we are sending event ot outselves
    //   auth = event;

    //   add(const MatchesUsernameObtainedEvent());
    // });
  }

// TODO i dont like that this is here - ideally, i would pass the user into functions that need it
  final AuthUseCases authUseCases;
  final MatchesUseCases matchesUseCases;

// TODO eventually, repositories should actually return full auth - not auth db api dto
  Auth? auth;
  // AuthDbApiDTO? auth;

  void _registerEventHandlers() {
    on<MatchesUsernameObtainedEvent>(_onMatchesUsernameObtainedEvent);
    on<MatchesFailedFetchRetriedEvent>(_onMatchesFailedFetchRetriedEvent);
    on<MatchesSearchTermChangedEvent>(
      _onMatchesSearchTermChanged,
      transformer: (eventsStream, eventHandler) {
        // TODO and now we want to debounce this

        final debouncedStream = eventsStream
            .debounceTime(const Duration(seconds: 1))
            .where((event) {
          final MatchesFilter? previousFilter = state.filter;

          // now assign value to some string to indicate previous filter - but only if it is by search term
          final String previousSearchTerm =
              previousFilter is MatchesFilterBySearchTerm
                  ? previousFilter.searchTerm
                  : "";
          // and now return true only if event search term is different from current
          // this is only so we dont do search for the same thing as before

          return event.searchTerm != previousSearchTerm;
        });

        final Stream<MatchesSearchTermChangedEvent> Function(
                Stream<MatchesSearchTermChangedEvent>,
                Stream<MatchesSearchTermChangedEvent> Function(
                    MatchesSearchTermChangedEvent)) restartableTransformer =
            restartable<MatchesSearchTermChangedEvent>();

        return restartableTransformer(debouncedStream, eventHandler);
      },
    );
    // TODO will be needeing more events here
    // https://github.dev/kodecocodes/rwf-materials/blob/c61b8fd4ddad8fa96c3eb8dd096f1be7363d9c39/05-managing-complex-state-with-blocs/projects/final/packages/features/quote_list/lib/src/quote_list_bloc.dart#L48
  }

  Future<void> _onMatchesFailedFetchRetriedEvent(
    MatchesFailedFetchRetriedEvent event,
    Emitter<MatchesBlocState> emitter,
  ) {
    emitter(state.copyWithNewError(null));

// TODO do eventually emit a full page porpely type - with meta data and such
// TODO or porbably, just subscrtibe to firebase stream and that is it
    final Stream<MatchesBlocState> firstPageOfMatches =
        matchesUseCases.streamMatchesPage(
      1,
      auth: auth,
      fetchPolicy: MatchesPageFetchPolicy.cacheAndNetwork,
      currentMatchesState: state,
      offsetDocumentId: "Test",
    );

    return emitter.onEach(
      stream,
      onData: emitter,
    );
  }

  Future<void> _onMatchesUsernameObtainedEvent(
    MatchesUsernameObtainedEvent event,
    Emitter<MatchesBlocState> emitter,
  ) {
    // TODO this is initial state mitterd - but why with filter - there is no loading - we just emit thatever we already have in the state
    // TODO i dont really understand what is this
    emitter(MatchesBlocState(
      filter: state.filter,
    ));

    // now we get the stream

    final Stream<MatchesBlocState> firstPageFetchStream =
        matchesUseCases.streamMatchesPage(
      // TODO page will not be needed later when we add this existing offset document id
      1,
      auth: auth,
      fetchPolicy: MatchesPageFetchPolicy.cacheAndNetwork,
      currentMatchesState: state,
      offsetDocumentId: "Test",
    );

    final future = emitter.onEach<MatchesBlocState>(
      firstPageFetchStream,
      onData: emitter,
    );

    return future;
  }

  Future<void> _onMatchesSearchTermChanged(
    MatchesSearchTermChangedEvent event,
    Emitter<MatchesBlocState> emitter,
  ) {
// TODO this should be freeezed
// TODO with this, we put search term inside the state
    emitter(
      MatchesBlocState.newSearchTermLoading(searchTerm: event.searchTerm),
    );

    final Stream<MatchesBlocState> firstPageFetchStream =
        matchesUseCases.streamMatchesPage(
      1,
      auth: auth,
      fetchPolicy: MatchesPageFetchPolicy.cachePreferable,
      currentMatchesState: state,
      offsetDocumentId: "Test",
    );

    final future = emitter.onEach(stream, onData: emitter);

// TODO dont get confused by the future return - nothing is returned here - instead, emitter will continue emitting new events as they come in
    return future;
  }
}
