import 'package:dio/src/cancel_token.dart';
import 'package:riverpod_guide/src/data/repositories/star_wars_repository.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';

class MockStarWarsRepository implements StarWarsRepository {
  @override
  Future<SwPerson> swPerson({
    required String id,
    required CancelToken cancelToken,
  }) {
    return Future.value(
      SwPerson.fromJson(
        {
          "name": "testname",
          "year": "someYear",
        },
      ),
    );
  }
}
