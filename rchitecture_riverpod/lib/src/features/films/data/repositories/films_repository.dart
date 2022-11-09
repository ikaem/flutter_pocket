import 'package:rchitecture_riverpod/src/features/films/data/dto/film_raw.dart';

abstract class FilmsRepository {
  Future<FilmRaw> getOne({required int id});
}
