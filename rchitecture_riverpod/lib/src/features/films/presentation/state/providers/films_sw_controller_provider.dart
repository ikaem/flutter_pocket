// all of these names could be simpler and shorter

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/controllers/film_controller.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/state/providers/films_sw_repository_provider.dart';

final filmControllerProvider = Provider<FilmController>((ref) {
  // would ready be ok here? i dont know
  final FilmsRepository filmsRepository = ref.watch(filmsSwRepositoryProvider);

  return FilmController(filmsRepository: filmsRepository);
});
