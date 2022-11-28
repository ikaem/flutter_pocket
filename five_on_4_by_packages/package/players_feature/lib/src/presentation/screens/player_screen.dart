import 'package:flutter/material.dart';

import "package:flutter_bloc/flutter_bloc.dart";
import 'package:players_feature/players_feature.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({
    super.key,
    required this.playerId,
  });

  final String playerId;

  @override
  Widget build(BuildContext context) {
    final PlayersRepository playersRepository =
        context.read<PlayersRepository>();

    return BlocProvider<PlayerBloc>(
      create: (providerContext) {
        return PlayerBloc(playersRepository: playersRepository)
          ..add(
            PlayerLoadEvent(
              playerId: playerId,
            ),
          );
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Player Screen"),
          ),
          body: BlocBuilder<PlayerBloc, PlayerState>(
            builder: (context, state) {
              if (state is PlayerInitialState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state is PlayerLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state is PlayerErrorState) {
                return const Center(
                  child: Text("There was some error"),
                );
              }

              return Column(
                children: [
                  const Text("We have a player"),
                  const Text("Player name:"),
                  Text((state as PlayerDataState).player?.nickname ?? ""),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
