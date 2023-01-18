import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:routemaster/routemaster.dart';

class AppTabNavigationScreen extends StatelessWidget {
  const AppTabNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TabPageState tabState = TabPage.of(context);

    return Scaffold(
      bottomNavigationBar: TabBar(
        controller: tabState.controller,
        tabs: [
          Tab(
            icon: Icon(Icons.people),
            text: "Players",
          ),
          Tab(
            icon: Icon(Icons.watch),
            text: "Matches",
          ),
        ],
      ),
    );
  }
}
