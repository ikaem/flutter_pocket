import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:rchitecture_riverpod/src/features/films/data/data_sources/sw_api/films_sw_api.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/sw_repository/films_sw_repository.dart';

// note that we are using regular provider, because this data is not getting mutated - we are just using it to be able to easily access the repository
final filmsSwRepositoryProvider = Provider<FilmsRepository>((ref) {
  return FilmsSwRepository(
    api: FilmsSwApi(),
    client: Client(),
  );
});
