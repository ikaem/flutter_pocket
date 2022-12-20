import 'package:five_on_4_by_packages/src/features/players_feature/src/presentation/presentation.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/src/presentation/widgets/players/players_list.dart';
import 'package:five_on_4_by_packages/src/features/players_feature/src/presentation/widgets/players/players_search.dart';
import 'package:flutter/material.dart';

import "package:flutter_bloc/flutter_bloc.dart";

class PlayersSearchScreen extends StatefulWidget {
  const PlayersSearchScreen({super.key});

  @override
  State<PlayersSearchScreen> createState() => _PlayersSearchScreenState();
}

class _PlayersSearchScreenState extends State<PlayersSearchScreen> {
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
          title: const Text("Players Search Screen"),
        ),
        body: BlocBuilder<PlayersBloc, PlayersState>(
          builder: (context, state) {
            return Column(
              children: [
                PlayersSearch(
                  searchController: _playersSearchController,
                ),
                if (state is PlayersInitialState)
                  const Center(
                    child: SizedBox.shrink(),
                  ),
                if (state is PlayersErrorState)
                  const Center(
                    child: Text("There was some error"),
                  ),
                if (state is PlayersDataState)
                  Expanded(
                    child: PlayersList(players: state.players),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  void initializeScreen() {
    _playersSearchController.addListener(() {
      // final playersBloc = context.;

      final searchTerm = _playersSearchController.text;
      _playersBloc.add(PlayersSearchEvent(searchTerm: searchTerm));

      // but now i also need access to the bloc - this probably cannot get the bloc thing
    });
  }
}
