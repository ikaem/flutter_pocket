import 'package:core_feature/core_feature.dart';
import 'package:matches_feature/src/data/data_sources/matches_api/api.dart';
import 'package:matches_feature/src/data/dtos/match_api_dto/match_api_dto.dart';

class MatchesFirestoreApi implements MatchesApi {
  static const String fireStoreCollection = "matches";

  const MatchesFirestoreApi({
    required this.fireStore,
    required this.appLogger,
  });

  final FireStore fireStore;
  final AppLogger appLogger;

  @override
  Future<MatchApiDTO> getMatch(String id) async {
    try {
      final response = await fireStore.getCollectionItem(
        fireStoreCollection,
        id,
      );

      if (response == null) throw Exception("Failed to get match - id: $id");

      final dtos = MatchApiDTO.fromJson(response);

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
  Future<List<MatchApiDTO>> getMatches() async {
    try {
      final response = await fireStore.getCollectionItems(
        fireStoreCollection,
      );

      final dtos = response.map((e) => MatchApiDTO.fromJson(e)).toList();

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
}


// TODO how to be handling errors 