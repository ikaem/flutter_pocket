import 'package:five_on_4_by_packages/src/features/players_feature/players_feature.dart';
import 'package:flutter/material.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({
    super.key,
    required this.players,
  });

  final List<Player> players;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: players.length,
            itemBuilder: (context, index) {
              final player = players[index];
              return ListTile(
                title: Text(player.nickname),
              );
            },
          ),
        )
      ],
    );
  }
}
