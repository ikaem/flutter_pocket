import 'package:flutter/material.dart' hide Route;
import 'package:sandbox/src/navigation/routes.dart';

class TopicsListScreen extends StatelessWidget {
  const TopicsListScreen({super.key});

  final List<Route> _routes = routes;
  static const routeName = "/topics";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              restorationId: 'home_screen_topics',
              itemCount: _routes.length,
              itemBuilder: (BuildContext context, int index) {
                final route = _routes[index];

                return ListTile(
                    title: Text(route.name),
                    leading: const CircleAvatar(
                      foregroundImage:
                          AssetImage('assets/images/flutter_logo.png'),
                    ),
                    onTap: () {
                      Navigator.restorablePushNamed(
                        context,
                        route.path,
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
