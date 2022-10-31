import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/star_wars_repository.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';
import 'package:riverpod_guide/src/utils/extensions/riverpod/auto_dispose_ref.dart';

final swPersonProvider = FutureProvider.autoDispose<SwPerson>((ref) {
  // note that this uses watch actually - not read
  final swRepoProvider = ref.watch(swRepositoryProvider);

  // and now we also want the cancel token
  final cancelToken = CancelToken();

  // with this option, we keep the state after listners are disposed
  // but then after some time we still cal.l close on the satte to dispose of the state
  // note that we want to dispose of the time too
  // but then we would not be havving this thing active anymroe? weird..
  // final link = ref.keepAlive();
  // final timer = Timer(const Duration(seconds: 30), () {
  //   link.close();
  // });

  // using the autoDisiposeRef extension
  ref.cacheFor(const Duration(seconds: 30));

  // and now we assign the token to be called in callback of the providers on dispose

  ref.onDispose(() {
    cancelToken.cancel();
    // note this too - but would this not invalidate closing the link - the staste of the provider now?
    // timer.cancel();
  });

  // if the request is successfuly, repsonse will now be kept
  // this means that if we go back to screen, it should not refetch data
  // ref.keepAlive();

  // and now we return the data

  return swRepoProvider.swPerson(
      id: "how to pass argument here", cancelToken: cancelToken);
});

// here, we can use .family to pass argument to the callback passed to the provider
final familiedSwPersonProvider =
    FutureProvider.autoDispose.family<SwPerson, String>(
  (ref, personId) {
    final personRepoProvider = ref.watch(swRepositoryProvider);

    final CancelToken cancelToken = CancelToken();

    return personRepoProvider.swPerson(id: personId, cancelToken: cancelToken);
  },
);

final swRepositoryProvider = Provider((ref) {
  return StarWarsRepository();
});
