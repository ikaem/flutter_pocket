import 'package:flutter/material.dart';
import 'package:rchitecture_riverpod/src/features/films/domain/models/film/film.dart';

class FilmContent extends StatelessWidget {
  const FilmContent({
    super.key,
    required this.film,
  });

  final Film film;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return ListView(
      children: [
        const Text("Title:"),
        Text(
          film.title,
          style: theme.textTheme.headline2,
        ),
      ],
    );
  }
}
