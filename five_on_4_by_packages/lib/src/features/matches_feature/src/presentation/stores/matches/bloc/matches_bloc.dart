// TODO use freezed for this later

// class MatchesBloc extends Bloc<MatchesBlocEvent, MatchesBlocState> {
//   // TODO
// }

import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/use_cases/use_cases.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    authUseCases.observeAuth().listen((event) {
      // TODO not like this - but it seems to be the only way to do it
      // alternatively, we could pass in initial user - and get users data with taht
      // TODO note that we are sending event ot outselves
      auth = event;

      add(const MatchesUsernameObtainedEvent());
    });
  }

// TODO i dont like that this is here - ideally, i would pass the user into functions that need it
  final AuthUseCases authUseCases;
  final MatchesUseCases matchesUseCases;

// TODO eventually, repositories should actually return full auth - not auth db api dto
  Auth? auth;
  // AuthDbApiDTO? auth;

  void _registerEventHandlers() {
    on<MatchesUsernameObtainedEvent>(_onMatchesUsernameObtainedEvent);
  }

  Future<void> _onMatchesUsernameObtainedEvent(
      MatchesUsernameObtainedEvent event, Emitter<MatchesBlocState> emitter) {
    // TODO this is initial state mitterd - but why with filter - there is no loading - we just emit thatever we already have in the state
    // TODO i dont really understand what is this
    emitter(MatchesBlocState(
      filter: state.filter,
    ));

    // now we get the stream

    final Stream<MatchesBlocState> firstPageFetchStream =
        matchesUseCases.fetchMatchesPage(
      1,
      fetchPolicy: MatchesPageFetchPolicy.cacheAndNetwork,
    );

    final future = emitter.onEach<MatchesBlocState>(
      firstPageFetchStream,
      onData: emitter,
    );

    return future;
  }

  // TODO actually, lets have a function to return state here
  // TODO not really sure where should this live
  // Stream<MatchesBlocState> _fetchQuotePage(
  //   int page, {
  //   required MatchesPageFetchPolicy fetchPolicy,
  //   // TODO test - dont like the default here
  //   bool isRefresh = false,
  // }) async* {
  //   // ok, get the current filter
  //   final MatchesFilter? currentlyAppliedFilter = state.filter;
  //   final bool isFilteringByFavorites =
  //       currentlyAppliedFilter is MatchesFilterByFavorites;
  //   final bool isUserSignedIn = auth != null;

  //   if (isFilteringByFavorites && !isUserSignedIn) {
  //     yield MatchesBlocState.noItemsFound(filter: currentlyAppliedFilter);
  //   }
  // }
}
