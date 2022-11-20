import 'package:architecture_bloc/src/features/movies/data/repositories/movies_repository.dart';
import 'package:architecture_bloc/src/features/movies/presentation/stores/movies/bloc/movies_bloc.dart';
import 'package:architecture_bloc/src/features/movies/presentation/stores/movies/events/movies_event.dart';
import 'package:architecture_bloc/src/features/movies/presentation/stores/movies/states/persons_state.dart';
import 'package:architecture_bloc/src/features/movies/presentation/widgets/movies_error_content.dart';
import 'package:architecture_bloc/src/features/movies/presentation/widgets/movies_list_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ideally, we would always fetch the same instance here
    // final moviesApi = SwMoviesApi();
    // final moviesRepository = MoviesRepositoryFake(api: moviesApi);

    final MoviesRepository moviesRepository = context.read<MoviesRepository>();

    return BlocProvider(
      create: (context) => MoviesBloc(moviesRepository: moviesRepository)
        ..add(
          const MoviesFetchDataEvent(),
        ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Persons screen"),
          ),
          body: BlocConsumer<MoviesBloc, MoviesState>(
            listenWhen: (previous, current) {
              if (current is MoviesInitialState ||
                  current is MoviesLoadingDataState) return false;
              //
              return true;
            },
            listener: (context, state) {
              if (state is MoviesErrorDataState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );

                return;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("No error yet"),
                ),
              );
            },
            builder: (context, state) {
              if (state is MoviesLoadingDataState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is MoviesErrorDataState) {
                return MoviesErrorContent(message: state.message);
              }
              if (state is MoviesSuccessDataState) {
                return MoviesListContent(movies: state.movies);
              }

              // this is now that initial state - should probably be just loading this
              return Container(
                color: Colors.yellow,
                child: const Text(
                  "Potentially some movies here",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
