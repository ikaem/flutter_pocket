// TODO later, use freezed on this i guess - or no need
// import "package:equatable/equatable.dart";
// import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
// import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/matches_filter/model.dart';

part of "matches_bloc.dart";

class MatchesBlocState extends Equatable {
  const MatchesBlocState({
    this.matches,
    this.nextPage,
    this.error,
    // TODO not really sure what to do with this
    this.filter,
    this.refreshError,
    this.favoriteToggleError,
  });

  // TODO test - this is never required - but it will be required with new named constrors here
  // note that here we may or may not have this data
  final List<Match>? matches;
  final int? nextPage;
  final dynamic error;
  // TODO come back to this - not sure what it does
  final MatchesFilter? filter;
  final dynamic refreshError;
  final dynamic favoriteToggleError;

  // TODO this is just initial one, to make it easier for me
  const MatchesBlocState.initial() : this();

// ok, constructor for building a state when the app is loading a tag change
// TODO come back to this
  MatchesBlocState.newTagLoading({
    // TODO we dont actually need tag here
    required Tag? tag,
  }) : this(
          // if we have tag, then filter is that tag - otherwise it is null

          filter: tag != null ? MatchesFilterByTag(tag: tag) : null,
        );

  // now for loading new search term - same thing
  MatchesBlocState.newSearchTermLoading({
    required String searchTerm,
  }) : this(
            filter: searchTerm.isEmpty
                ? null
                : MatchesFilterBySearchTerm(
                    searchTerm: searchTerm,
                  ));

  const MatchesBlocState.noItemsFound({
    required MatchesFilter? filter,
  }) : this(
          matches: const [],
          error: null,
          nextPage: 1,
          filter: filter,
        );

  const MatchesBlocState.success({
    required int? nextPage,
    required List<Match> matches,
    required MatchesFilter? filter,
    required bool isRefresh,
  }) : this(
          nextPage: nextPage,
          matches: matches,
          filter: filter,
        );

  // just functions now to copy with new error
  MatchesBlocState copyWithNewError(
    dynamic error,
  ) =>
      MatchesBlocState(
        matches: matches,
        nextPage: nextPage,
        error: error,
        filter: filter,
        refreshError: null,
      );

  MatchesBlocState copyWithNewRefreshError(
    dynamic refreshError,
  ) =>
      MatchesBlocState(
        matches: matches,
        nextPage: nextPage,
        error: error,
        filter: filter,
        refreshError: refreshError,
        favoriteToggleError: null,
      );

  MatchesBlocState copyWithNewFavoriteToggleError(
    dynamic favoriteToggleError,
  ) =>
      MatchesBlocState(
        matches: matches,
        nextPage: nextPage,
        error: error,
        filter: filter,
        refreshError: refreshError,
        favoriteToggleError: favoriteToggleError,
      );

  // TODO here is a function that will return state with updated match only - but i dont want to do it like that

  // this is just equality check
  @override
  List<Object?> get props =>
      [matches, nextPage, error, filter, refreshError, favoriteToggleError];
}
