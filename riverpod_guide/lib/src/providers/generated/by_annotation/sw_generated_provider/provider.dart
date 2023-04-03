import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_guide/src/data/repositories/star_wars_repository_with_dependencies.dart';
import 'package:riverpod_guide/src/providers/generated/by_hand/dio_provider.dart';

part "provider.g.dart";

@riverpod
StarWarsRepositoryWithDependencies starWarsProviderWithDeps(
    StarWarsProviderWithDepsRef ref) {
  final Dio dio = ref.watch(dioProvider);
  // final String baseUrl = Env.baseUrl
  const String baseUrl = "https://swapi.dev/api/";

  return StarWarsRepositoryWithDependencies(
    baseUrl: baseUrl,
    dio: dio,
  );
}
