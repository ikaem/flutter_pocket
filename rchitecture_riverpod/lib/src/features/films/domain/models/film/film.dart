import 'package:rchitecture_riverpod/src/features/films/data/dto/film_raw.dart';

class Film {
  Film({
    required this.id,
    required this.title,
    required this.director,
    required this.producer,
    required this.edited,
    required this.created,
    required this.released,
  });

  final int id;
  final String title;
  final String director;
  final String producer;
  final String edited;
  final String created;
  final String released;

  // now this is factory - but it does not have to be
  factory Film.fromRaw(FilmRaw raw, int id) {
    return Film(
      id: id,
      title: raw.title,
      director: raw.director,
      producer: raw.producer,
      edited: raw.edited,
      created: raw.created,
      released: raw.released,
    );
  }
}
