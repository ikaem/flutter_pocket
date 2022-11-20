import 'package:architecture_bloc/src/features/movies/data/repositories/movies_repository.dart';
import 'package:architecture_bloc/src/features/movies/presentation/stores/movies/events/movies_event.dart';
import 'package:architecture_bloc/src/features/movies/presentation/stores/movies/states/persons_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  // here, we probably want to pass the repository - or that use case thing - just my guess
  // TODO what is that use case - i want a service here, or some controller
  MoviesBloc({
    required this.moviesRepository,
  }) : super(const MoviesInitialState()) {
    // here we define what will happen on which event
    on<MoviesFetchDataEvent>(_onMoviesFetchDataEvent);
  }

  // this is just so i don't have to instantiate it here
  final MoviesRepository moviesRepository;

  // now we define cases here - these could also be called resolvers

// this accts evnet and emitter for the persons state
  Future<void> _onMoviesFetchDataEvent(
    MoviesFetchDataEvent event,
    Emitter<MoviesState> emitter,
  ) async {
    // now stuff here

    emitter(const MoviesLoadingDataState());

    try {
/* issue here is that i have to call instance of this repo if i dont pass it to the bloc as a prop */
      final movies = await moviesRepository.many();
      emitter(
        MoviesSuccessDataState(movies: movies),
      );
    } catch (e) {
      emitter(MoviesErrorDataState(
        message: e.toString(),
      ));
    }
  }
}
