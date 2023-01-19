import 'package:five_on_4_by_packages/src/features/core_feature/src/navigation/app_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:routemaster/routemaster.dart';

class TeamsScreen extends StatelessWidget {
  const TeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "This is teams screen",
            ),
            TextButton(
                onPressed: () {
                  Routemaster.of(context)
                      .push(AppPaths.teamPath(teamId: 1.toString()));
                },
                child: Text("Go to team number 1"))
          ],
        ),
      ),
    );
  }
}
