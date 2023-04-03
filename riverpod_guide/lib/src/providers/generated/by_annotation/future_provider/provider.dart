import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_guide/src/data/repositories/star_wars_repository_with_dependencies.dart';
import 'package:riverpod_guide/src/models/sw_person.dart';
import 'package:riverpod_guide/src/providers/generated/by_annotation/sw_generated_provider/provider.dart';

part "provider.g.dart";

@riverpod
Future<SwPerson> swPersonGenerated(
  swPersonRef, {
  required String id,
  // required CancelToken cancelToken,
}) async {
  final StarWarsRepositoryWithDependencies starWarsRepositoryWithDependencies =
      swPersonRef.watch(starWarsProviderWithDepsProvider);

  final CancelToken cancelToken = CancelToken();

  final person = await starWarsRepositoryWithDependencies.swPerson(
    id: id,
    cancelToken: cancelToken,
  );

  print(person.name);

  return person;

  // return swPersonRef.watch(starWarsProviderWithDepsProvider).swPerson(
  //       cancelToken: cancelToken,
  //       id: id,
  //     );
}
