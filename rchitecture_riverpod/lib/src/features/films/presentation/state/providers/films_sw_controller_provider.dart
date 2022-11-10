// all of these names could be simpler and shorter

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/domain/models/film/film.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/controllers/film_controller.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/state/providers/films_sw_repository_provider.dart';

// final filmControllerProvider = Provider<FilmController>((ref) {
final filmControllerProvider = StateNotifierProvider.autoDispose
    .family<FilmController, AsyncValue<Film>, int?>((
  ref,
  filmId,
) {
  // would ready be ok here? i dont know
  final FilmsRepository filmsRepository = ref.watch(filmsSwRepositoryProvider);

  return FilmController(
    filmsRepository: filmsRepository,
    filmId: filmId,
  );

  // this could have easily called data immediately and then just return instance of the film controller - and we have data inside immeidately
// we would have just created a priovider with family , and use state provider or state notifier provider instead, to be able to hold state?
  // return FilmController(filmsRepository: filmsRepository)
  //   ..loadOne(
  //     id: 1,
  //   );
});
