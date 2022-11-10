import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/films/presentation/state/providers/films_sw_controller_provider.dart';

class FilmScreen extends ConsumerWidget {
  const FilmScreen({
    super.key,
    required this.filmId,
  });

  final int filmId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  TODO no need to get args from here, because they are already lost after being caught in the ogenerate route
    // final filmId = AppRouter.getRouteArgs<int>(context: context);
    final filmState = ref.watch(
      filmControllerProvider(
        filmId,
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.amberAccent,
          child: Column(
            children: [
              const Text("Hello film in future"),
              filmState.when(
                data: (data) {
                  //
                  return const Center(
                    child: Text("Film is in"),
                  );
                },
                error: (error, stackTrace) {
                  return const Center(
                    child: Text("Error is in"),
                  );
                },
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
