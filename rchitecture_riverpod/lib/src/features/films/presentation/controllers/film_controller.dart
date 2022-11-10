// note that this actually provides soltuion just for one signle film
// it uses state notifier to

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/films/data/dto/film_raw.dart';
import 'package:rchitecture_riverpod/src/features/films/data/repositories/films_repository.dart';
import 'package:rchitecture_riverpod/src/features/films/domain/models/film/film.dart';
import 'package:rchitecture_riverpod/src/features/films/utils/exceptions/api_exception/api_exception.dart';

class FilmController extends StateNotifier<AsyncValue<Film>> {
  FilmController({
    required this.filmsRepository,
    required this.filmId,
    // note here that we do have to set initial state for this
  }) : super(const AsyncValue.loading()) {
    loadOne(id: filmId);
  }

  FilmsRepository filmsRepository;
  int? filmId;

  Future<void> loadOne({required int? id}) async {
    if (id == null) return;

    try {
      state = const AsyncValue.loading();
      final FilmRaw filmRaw = await filmsRepository.getOne(id: id);
      //
      state = AsyncValue.data(Film.fromRaw(filmRaw));
    } on ApiException catch (e) {
      // note that every exception will be api exception, because this is how we set it
      // this as async value will actually swithc over the error to know what type it is
      state = e.asAsyncValue();
    }
  }
}
