import 'package:architecture_bloc/src/features/movies/domain/models/movie.dart';
import 'package:flutter/material.dart';

class MoviesListContent extends StatelessWidget {
  const MoviesListContent({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];

        return ListTile(
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (builderContext) => PersonScreen(id: movie.id),
            //   ),
            // );
          },
          title: Text(movie.title),
          subtitle: Text(movie.director),
        );
      },
    );
  }
}
