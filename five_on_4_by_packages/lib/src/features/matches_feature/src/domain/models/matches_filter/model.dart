import "package:equatable/equatable.dart";
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/domain.dart';

abstract class MatchesFilter extends Equatable {
  const MatchesFilter();

  @override
  List<Object?> get props => [];
}

class MatchesFilterByTag extends MatchesFilter {
  const MatchesFilterByTag({
    required this.tag,
  });

  final Tag tag;

  @override
  List<Object?> get props => [
        tag,
      ];
}

class MatchesFilterBySearchTerm extends MatchesFilter {
  const MatchesFilterBySearchTerm({
    required this.searchTerm,
  });

  final String searchTerm;

  @override
  List<Object?> get props => [
        searchTerm,
      ];
}

class MatchesFilterByFavorites extends MatchesFilter {
  const MatchesFilterByFavorites();

  @override
  List<Object?> get props => [];
}
