import 'package:flutter/material.dart';
import 'package:players_feature/players_feature.dart';

import "package:flutter_bloc/flutter_bloc.dart";
import 'package:players_feature/src/presentation/widgets/players/players_list.dart';
import 'package:players_feature/src/presentation/widgets/players/players_search.dart';

class PlayersScreen extends StatefulWidget {
  const PlayersScreen({super.key});

  @override
  State<PlayersScreen> createState() => _PlayersScreenState();
}

class _PlayersScreenState extends State<PlayersScreen> {
  final TextEditingController _playersSearchController =
      TextEditingController();

// TODO this is cool - a getter for bloc
  PlayersBloc get _playersBloc => context.read<PlayersBloc>();

  @override
  void initState() {
    initializeScreen();
    super.initState();
  }

  @override
  void dispose() {
    _playersSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PlayersUseCases playersUseCases = context.read<PlayersUseCases>();

// TODO probably not the best to initialize bloc here - probably would be better to have it initialized over the entire app - and jsut send event here when the ascreen loads
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Players Screen"),
        ),
        body: BlocBuilder<PlayersBloc, PlayersState>(
          builder: (context, state) {
            if (state is PlayersInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is PlayersLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is PlayersErrorState) {
              return const Center(
                child: Text("There was some error"),
              );
            }

            final players = (state as PlayersDataState).players;

            return Column(
              children: [
                PlayersSearch(
                  searchController: _playersSearchController,
                ),
                Expanded(
                  child: PlayersList(players: players),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void initializeScreen() {
    _playersBloc.add(
      const PlayersLoadEvent(searchTerm: null),
    );
    _playersSearchController.addListener(() {
      // final playersBloc = context.;

      final searchTerm = _playersSearchController.text;
      _playersBloc.add(PlayersSearchEvent(searchTerm: searchTerm));

      // but now i also need access to the bloc - this probably cannot get the bloc thing
    });
  }
}
