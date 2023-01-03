import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/remote_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/domain.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/enums/app_enums.dart';

abstract class MatchesRepository {
  Future<MatchRemoteDTO> getMatch(String id);
  // TODO this will need bunch of params later
  Future<List<MatchRemoteDTO>> getMatches();
  Future<void> postMatch(Map<String, dynamic> data);
  // TODO this is new
  // TODO also, this could return a proper data now
  Stream<List<Match>> streamMatches(int pageNumber,
      {Tag? tag,
      String searchTerm = "",
      String? favoritedByUsername,
      required MatchesPageFetchPolicy fetchPolicy,
      required String offsetDocumentId});
}
