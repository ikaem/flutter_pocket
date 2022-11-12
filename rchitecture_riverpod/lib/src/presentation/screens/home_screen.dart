import 'package:flutter/material.dart';
import 'package:rchitecture_riverpod/src/application/services/routing/app_router.dart';
import 'package:rchitecture_riverpod/src/application/services/routing/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _id = 0;

  void _incrementCounter() {
    setState(() {
      _id++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Increment id of a resource that you want to fetch:',
              textAlign: TextAlign.center,
            ),
            Text(
              '$_id',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    //
                    AppRouter.navigateToRoute<int>(
                      context: context,
                      path: AppRoutes.screenFilm,
                      args: _id,
                    );
                  },
                  child: const Text("Get film"),
                ),
                TextButton(
                  onPressed: () {
                    //
                    AppRouter.navigateToRoute<int>(
                      context: context,
                      path: AppRoutes.screenWeather,
                      args: _id,
                    );
                  },
                  child: const Text("Get person"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
