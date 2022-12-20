import 'package:five_on_4_by_packages/src/features/core_feature/src/libraries/libraries.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/repositories/matches_api_repository/api_repository.dart';

class MatchUseCases {
// Todo MATCH use cases would habdle all validation thing too? is it autprzied, are we online and so on
// not form validation, though
  const MatchUseCases({
    required this.matchesApiRepository,
    // TODO eventually, this will get databse repository too
    required this.appLogger,
  });

  final MatchesApiRepository matchesApiRepository;
  // TODO not sure if i need app logger here - i might though
  final AppLogger appLogger;
}
