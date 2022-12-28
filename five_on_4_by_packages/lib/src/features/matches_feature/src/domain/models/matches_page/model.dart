import 'package:equatable/equatable.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';

class MatchesPage extends Equatable {
  const MatchesPage({
    required this.isLastPage,
    required this.matches,
  });

  final bool isLastPage;
  final List<Match> matches;

  @override
  List<Object?> get props => [isLastPage, matches];
}
