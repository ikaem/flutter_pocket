// import "package:equatable/equatable.dart";
// import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/domain.dart';

// TODO possibly replace all of these with freezed later

part of "matches_bloc.dart";

abstract class MatchesBlocEvent extends Equatable {
  const MatchesBlocEvent();

  @override
  List<Object?> get props => [];
}

class MatchesFilterByFavoritesToggledEvent extends MatchesBlocEvent {
  const MatchesFilterByFavoritesToggledEvent();
  // NOTE we are not overriding props here because we did it in the abstract, and we dont need it ihere
}

// TODO for this, we will need to have tags on matches
// friendly, tournament, leaguue, professional...
class MatchesTagChangedEvent extends MatchesBlocEvent {
  const MatchesTagChangedEvent({
    required this.tag,
  });

// TODO what is tag
  final Tag? tag;

  @override
  List<Object?> get props => [tag];
}

class MatchesSearchTermChangedEvent extends MatchesBlocEvent {
  const MatchesSearchTermChangedEvent({
    required this.searchTerm,
  });

  final String searchTerm;

  @override
  List<Object?> get props => [searchTerm];
}

// TODO possibly adjust naming a bit later
class MatchesRefreshedEvent extends MatchesBlocEvent {
  const MatchesRefreshedEvent();
}

class MatchesNextPageRequestedEvent extends MatchesBlocEvent {
  const MatchesNextPageRequestedEvent({
    required this.pageNumber,
  });

  final int pageNumber;
}

// TODO note that this is an abstract too - but still extends
// TODO later, favorite can be replaced by save match or something - or just leave favorite
abstract class MatchesItemFavoriteToggledEvent extends MatchesBlocEvent {
  const MatchesItemFavoriteToggledEvent({
    required this.id,
  });

  final int id;
}

class MatchesItemFavoritedEvent extends MatchesItemFavoriteToggledEvent {
  const MatchesItemFavoritedEvent({required int id}) : super(id: id);
}

class MatchesItemUnfavoritedEvent extends MatchesItemFavoriteToggledEvent {
  const MatchesItemUnfavoritedEvent({required int id}) : super(id: id);
}

// not sure what these do
class MatchesFailedFetchRetriedEvent extends MatchesBlocEvent {
  const MatchesFailedFetchRetriedEvent();
}

class MatchesUsernameObtainedEvent extends MatchesBlocEvent {
  const MatchesUsernameObtainedEvent();
}

// TODO i dont think i want to use this one as part of matches bloc - this should be in the match bloc as it is meant to be used to update a full match
class MatchesItemUpdatedEvent extends MatchesBlocEvent {
  const MatchesItemUpdatedEvent({
    required this.updatedMatch,
  });

  final Match updatedMatch;
}
