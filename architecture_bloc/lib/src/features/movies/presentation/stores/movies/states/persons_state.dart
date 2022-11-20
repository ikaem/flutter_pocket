import 'package:architecture_bloc/src/features/movies/domain/models/movie.dart';
import 'package:equatable/equatable.dart';

// could this have been done with freezed too
abstract class MoviesState extends Equatable {
  // we specify constructor to make sure it is a cosntant cosntructo
  const MoviesState();
}

class MoviesInitialState extends MoviesState {
  const MoviesInitialState();

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class MoviesLoadingDataState extends MoviesState {
  const MoviesLoadingDataState();

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class MoviesErrorDataState extends MoviesState {
  const MoviesErrorDataState({
    required this.message,
  });

  final String message;

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}

class MoviesSuccessDataState extends MoviesState {
  const MoviesSuccessDataState({
    required this.movies,
  });

  final List<Movie> movies;

  @override
  // empty list  means that this state is always different - nothing is used to compare the state
  // object is used by default - since there could be various things in the list
  List<Object?> get props => [];
}
