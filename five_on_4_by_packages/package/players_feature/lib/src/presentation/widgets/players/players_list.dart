import 'package:flutter/material.dart';
import 'package:players_feature/players_feature.dart';

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
