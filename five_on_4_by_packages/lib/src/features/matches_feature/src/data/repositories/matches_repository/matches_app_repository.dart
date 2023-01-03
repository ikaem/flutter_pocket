import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/matches_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data_sources/matches_local_api/matches_local_api.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_local_dto/local_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/match_remote_dto.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/domain/models/match/model.dart';
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

// TODO i think this should send match, and not match page
// TODO and then use casae can transform it into match page - eventually
  @override
  Stream<List<Match>> streamMatches(
    // TODO maybe page number is not needed when we have
    int pageNumber, {
    Tag? tag,
    String searchTerm = "",
    String? favoritedByUsername,
    required String offsetDocumentId,
    required MatchesPageFetchPolicy fetchPolicy,
  }) async* {
    final bool isFilteringByTag = tag != null;
    final bool isSearching = searchTerm.isEmpty;
    final bool isFetchPolicyNetworkOnly =
        fetchPolicy == MatchesPageFetchPolicy.networkOnly;

    final bool shouldSkipCacheLookup =
        isFilteringByTag || isSearching || isFetchPolicyNetworkOnly;

    // TODO test - also, here if we skip cache lookup, we immediately get data from remote api - and yield it

// TODO all htis if stuff could probably be writter more nice
    if (shouldSkipCacheLookup) {
      // at this point, we can just get data, stream data, and return
      final freshPageOfMatches = await _getPaginatedMatchesFromRemoteApi(
        pageNumber,
        tag: tag,
        searchTerm: searchTerm,
        favoritedByUsername: favoritedByUsername,
        offsetDocumentId: offsetDocumentId,
      );

      yield freshPageOfMatches;
      return;
    }

    // TODO at this point, we should not skip cache loookup
    // so we get data from the cache

    // now we should get data from cache
    // but, also, we need to know what should we only get local data , or should we get remote data too
    // TODO cache policy could be just unified enum - if we want to rteuse it with other data fetching opliciies - players for isntance
    final bool isFetchPolicyCacheAndNetwork =
        fetchPolicy == MatchesPageFetchPolicy.cacheAndNetwork;

    final bool isFetchPolicyCachePreferably =
        fetchPolicy == MatchesPageFetchPolicy.cachePreferable;

    final bool shouldEmitCachedDataInAdcance =
        isFetchPolicyCacheAndNetwork || isFetchPolicyCachePreferably;

    // now we get cached data

    final List<Match> cachedMatches = await _getPaginatedMatchesFromLocalApi(
      pageNumber,
      tag: tag,
      searchTerm: searchTerm,
      favoritedByUsername: favoritedByUsername,
      offsetDocumentId: offsetDocumentId,
    );

    if (shouldEmitCachedDataInAdcance) {
      // TODO this will throw error if there is no matches - if null - because we set it up that way swith database
      yield cachedMatches;
    }

    if (isFetchPolicyCachePreferably) return;

    // TODO ok, now wa want to get remote data too - we only yielded so we can show somehting

    try {
      final List<Match> newFreshPageOfMatches =
          await _getPaginatedMatchesFromRemoteApi(
        pageNumber,
        tag: tag,
        searchTerm: searchTerm,
        favoritedByUsername: favoritedByUsername,
        offsetDocumentId: offsetDocumentId,
      );

      yield newFreshPageOfMatches;
    } catch (e) {
      final error = e;
      // ok, now we want to return somehting - we do have that cached page from above - maybe
      // TODO we could also check the error here - we should adjust database to return pper error here
      // also, he checks if we have cheached netwrok preferable - if we do , he wants to show somehting
      // if we only want cached data - he throws error to indicate that we have erorr with getting cached data - or any data

      final bool isFetchPolicyCachePreferably =
          fetchPolicy == MatchesPageFetchPolicy.cachePreferable;

      // missing an error here from the local api
      // so weill jsut rethrow now to indicate any error
      if (error is! DbFetchException) {
        // Todo to stuff here, return some no data whatever

        return;
      }

      rethrow;
    }
  }

  // TODO helpers only

  // TODO test
  Future<List<Match>> _getPaginatedMatchesFromRemoteApi(
    int pageNumber, {
    required Tag? tag,
    required String searchTerm,
    required String? favoritedByUsername,
    required String offsetDocumentId,
  }) async {
// TODO for now, favorite we will not use

    final List<MatchRemoteDTO> matchesDTOs =
        await matchesRemoteApi.searchMatches(
      page: pageNumber,
      tag: tag?.name,
      searchTerm: searchTerm,
      offsetDocumentId: offsetDocumentId,
    );

    // TOOD now we want to cache stuff

    await _saveRemoteMatchesToLocalApi(matchesDTOs);

    final List<Match> matches =
        matchesDTOs.map((dto) => Match.fromRemoteDTO(dto)).toList();

    return matches;
  }

  Future<List<Match>> _getPaginatedMatchesFromLocalApi(
    int pageNumber, {
    required Tag? tag,
    required String searchTerm,
    required String? favoritedByUsername,
    required String offsetDocumentId,
  }) async {
// TODO for now, favorite we will not use
    final List<MatchLocalDTO> dtos = await matchesLocalApi.getMatches();

    // TODO this will need pagination later - and possibly some facvoring and such

    final List<Match> matches =
        dtos.map((dto) => Match.fromLocalDTO(dto)).toList();

    return matches;
  }

  Future<void> _saveRemoteMatchesToLocalApi(
      List<MatchRemoteDTO> remoteDTOs) async {
    final List<MatchLocalDTO> localDTOs =
        remoteDTOs.map((dto) => MatchLocalDTO.fromMatchRemoteDTO(dto)).toList();

    final Map<String, MatchLocalDTO> localDTOsMap =
        _generateMatchLocalDTOsMapForLocalApi(localDTOs);

    await matchesLocalApi.saveMatches(localDTOsMap);
  }

  // TODO need converter to map for save matches
  Map<String, MatchLocalDTO> _generateMatchLocalDTOsMapForLocalApi(
    List<MatchLocalDTO> dtos,
  ) {
    final Map<String, MatchLocalDTO> map = {
      for (MatchLocalDTO dto in dtos) dto.id: dto,
    };

    return map;
  }
}
