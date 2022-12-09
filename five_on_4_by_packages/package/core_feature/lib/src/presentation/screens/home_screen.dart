import 'package:flutter/material.dart';
import 'package:players_feature/players_feature.dart';
import "package:weather_feature/weather_feature.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // TODO make better navigation here
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const PlayersScreen();
                  },
                ));
              },
              child: const Text("To players screen"),
            ),
            TextButton(
              onPressed: () {
                // TODO make better navigation here
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const PlayersSearchScreen();
                  },
                ));
              },
              child: const Text("To players search screen"),
            ),
            TextButton(
              onPressed: () {
                // TODO make better navigation here
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const WeatherScreen();
                  },
                ));
              },
              child: const Text("To weather screen"),
            ),
            TextButton(
              onPressed: () {
                // TODO make better navigation here
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const PlayerScreen(playerId: "vtRlluMVicLMeiYlXRdU");
                  },
                ));
              },
              child: const Text("To player screen"),
            ),
            const Text("Home Screen"),
          ],
        ),
      ),
    ));
  }
}
