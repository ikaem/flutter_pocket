import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data_sources/matches_local_api/matches_local_api.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/match_remote_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/utils/utils.dart';

class MatchesAppRepository implements MatchesRepository {
  const MatchesAppRepository({
    required this.matchesRemoteApi,
    required this.matchesLocalApi,
  });

  final MatchesRemoteApi matchesRemoteApi;
  final MatchesLocalApi matchesLocalApi;

  @override
  Future<MatchRemoteDTO> getMatch(String id) async {
    final dto = await matchesRemoteApi.getMatch(id);

    // TODO probably should update database here too

    return dto;
  }

  @override
  Future<List<MatchRemoteDTO>> getMatches() async {
    final dtos = await matchesRemoteApi.getMatches();

    return dtos;
  }

  @override
  Future<void> postMatch(Map<String, dynamic> data) async {
    await matchesRemoteApi.postMatch(data);
  }

  @override
  Stream<Match> getMatchesPage(
    int pageNumber, {
    Tag? tag,
    String searchTerm = "",
    String? favoritedByUsername,
    required MatchesPageFetchPolicy fetchPolicy,
  }) async* {
    final bool isFilteringByTag = tag != null;
    final bool isSearching = searchTerm.isEmpty;
    final bool isFetchPolicyNetworkOnly =
        fetchPolicy == MatchesPageFetchPolicy.networkOnly;

    final bool shouldSkipCacheLookup =
        isFilteringByTag || isSearching || isFetchPolicyNetworkOnly;
  }
}
