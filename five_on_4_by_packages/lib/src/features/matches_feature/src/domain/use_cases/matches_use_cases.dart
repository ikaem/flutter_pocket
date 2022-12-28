import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/repositories/matches_repository/repository.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/matches_filter.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/presentation/stores/matches/bloc/bloc.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/enums/app_enums.dart';

class MatchesUseCases {
// Todo MATCH use cases would habdle all validation thing too? is it autprzied, are we online and so on
// not form validation, though
  const MatchesUseCases({
    required this.matchesApiRepository,
    // TODO eventually, this will get databse repository too
    required this.appLogger,
  });

  final MatchesRepository matchesApiRepository;
  // TODO not sure if i need app logger here - i might though
  final AppLogger appLogger;

  // TODO should each use case get soem auth repo, or should it get auth argument passed to it - lets pass it for now

  // TODO note that we stream a list of matches state - which i dont like to be hones

  // TODO , ok this will be yielding data - so it is a stream
  // TODO is it possibly do be sending matches - and then transform data in the bloc to send actual bloc state
  // so we send maybe null - and then if we are null with bloc, we would emit event, no items found
  Stream<MatchesBlocState> streamMatchesPage(
    int page, {
    required Auth? auth,
    required MatchesPageFetchPolicy fetchPolicy,
    required MatchesBlocState currentMatchesState,
    bool isRefresh = false,
  }) async* {
    // ok, get the current filter
    final MatchesFilter? currentlyAppliedFilter = currentMatchesState.filter;
    final bool isFilteringByFavorites =
        currentlyAppliedFilter is MatchesFilterByFavorites;
    final bool isUserSignedIn = auth != null;

    if (isFilteringByFavorites && !isUserSignedIn) {
      yield MatchesBlocState.noItemsFound(filter: currentlyAppliedFilter);

// TODO we can return from generator, to get out of it i guess
      return;
    }

    // final Stream<Match> pagesStream = matchesApiRepository.
  }
}
