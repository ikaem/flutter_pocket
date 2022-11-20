import 'package:architecture_bloc/src/features/movies/data/data_sources/sw_persons_api.dart';
import 'package:architecture_bloc/src/features/movies/data/repositories/movies_repository.dart';
import 'package:architecture_bloc/src/features/movies/domain/models/movie.dart';

class MoviesRepositoryFake implements MoviesRepository {
  const MoviesRepositoryFake({required this.api});

  final SwMoviesApi api;

  @override
  Future<List<Movie>> many() async {
// it seems they are actually ok to have the repo convert data from dto to ui adjsuted

    final dtos = await api.many();

    final movies = dtos.map((dto) => Movie.fromDTO(dto)).toList();

    return movies;
  }
}
