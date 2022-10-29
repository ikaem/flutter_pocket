import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/star_wars_repository.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';

final swPersonProvider = FutureProvider.autoDispose<SwPerson>((ref) {
  // note that this uses watch actually - not read
  final swRepoProvider = ref.watch(swRepositoryProvider);

  // and now we also want the cancel token
  final cancelToken = CancelToken();

  // and now we assign the token to be called in callback of the providers on dispose

  ref.onDispose(() {
    cancelToken.cancel();
  });

  // and now we return the data

  return swRepoProvider.swPerson(
      id: "how to pass argument here", cancelToken: cancelToken);
});

final swRepositoryProvider = Provider((ref) {
  return StarWarsRepository();
});
