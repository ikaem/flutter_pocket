import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:five_on_4_by_packages/src/features/core_feature/core_feature.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/data_sources/matches_remote_api/remote_api.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/dtos.dart';
import 'package:five_on_4_by_packages/src/features/matches_feature/src/data/dtos/match_remote_dto/remote_dto.dart';

class MatchesAppRemoteApi implements MatchesRemoteApi {
  static const String fireStoreCollection = "matches";

  const MatchesAppRemoteApi({
    required this.fireStore,
    required this.appLogger,
  });

  final FireStore fireStore;
  final AppLogger appLogger;

  @override
  Future<MatchRemoteDTO> getMatch(String id) async {
    try {
      final response = await fireStore.getCollectionItem(
        fireStoreCollection,
        id,
      );

      if (response == null) throw Exception("Failed to get match - id: $id");

      final dtos = MatchRemoteDTO.fromJson(response);

      return dtos;
    } catch (e) {
      // TODO remove try catch later

      appLogger.log(
        logLevel: LogLevel.error,
        message: "Failed to get match - id: $id",
        error: e,
      );

// TODO need better error here - need to know what status code we get
// TODO i do have exception for firestore - but maybe it is better to use this if i ever swithc from firestore
      throw ApiGetException(
        message: "Failed to get match - id: $id",
        statusCode: 500,
      );
    }
  }

  @override
  Future<List<MatchRemoteDTO>> getMatches() async {
    try {
      final response = await fireStore.getCollectionItems(
        fireStoreCollection,
      );

      final dtos = response.map((e) => MatchRemoteDTO.fromJson(e)).toList();

      return dtos;
    } catch (e) {
      // TODO remove try catch later

      appLogger.log(
        logLevel: LogLevel.error,
        message: "Failed to get matches",
        error: e,
      );

// TODO need better error here - need to know what status code we get
      throw ApiGetException(
        message: "Failed to get matches",
        statusCode: 500,
      );
    }
  }

  @override
  Future<void> postMatch(Map<String, dynamic> data) async {
// TODO could we make data type for this, and post it?

    try {
      await fireStore.postCollectionItem(fireStoreCollection, data);

      // TODO this could potentially return true or false
      // TODO not really sure how firebase cloud thing racts to failed stuff

    } catch (e) {
      appLogger.log(
        logLevel: LogLevel.error,
        message: "Failed to post match: $data",
        error: e,
      );

// TODO need better error here - need to know what status code we get
      throw ApiPostException(
        message: "Failed to post match: $data",
        statusCode: 500,
      );
    }
  }

  @override
  Future<List<MatchRemoteDTO>> searchMatches({
    required int page,
    required String? tag,
    required String searchTerm,
    // TODO test
    required String offsetDocumentId,
  }) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> offsetDocumentSnapshot =
          await fireStore.getCollectionDocumentSnapshot(
        fireStoreCollection,
        offsetDocumentId,
      );

      // TODO using solution to search for items
      // https://stackoverflow.com/questions/50870652/flutter-firebase-basic-query-or-basic-search-code
      // TODO will need to add another field to database to have only lowercase title there
      final CollectionReference<Map<String, dynamic>> matchesCollection =
          fireStore.getCollectionReference(fireStoreCollection);
      final filteredCollectionItemsSnapshot = await matchesCollection
          .startAt([searchTerm])
          .endAt(['$searchTerm\uf8ff'])
          .startAfterDocument(offsetDocumentSnapshot)
          .where(
            "tags",
            arrayContains: tag,
          )
          .orderBy("name")
          .limit(10)
          .get();

      final docs = filteredCollectionItemsSnapshot.docs;

      // TODO not sure i want to do this here - or maybe i do this here

      final items = docs.map((e) {
        final data = e.data();

        data.addKey("id", e.id);

        return data;
      }).toList();

      final dtos = items.map((e) => MatchRemoteDTO.fromJson(e)).toList();

      return dtos;
    } catch (e) {
      appLogger.log(
        logLevel: LogLevel.error,
        message: "Failed to search matches",
        error: e,
      );
      // TODO i did have some specific erros for firebase - but maybe there is no need
      throw ApiGetException(
        message: "Failed to search matches",
        // TODO not sure if status code is ever needed
        statusCode: 500,
      );
    }
  }
}

// TODO how to be handling errors
