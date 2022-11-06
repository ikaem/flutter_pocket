import 'package:rchitecture_riverpod/src/features/films/domain/models/film.dart';

abstract class FilmsRepository {
  Future<Film> getOne({required String id});
}
