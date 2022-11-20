import 'package:architecture_bloc/src/features/movies/domain/models/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> many();
}
