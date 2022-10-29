import 'package:flutter/material.dart';
import 'package:riverpod_guide/src/screens/change_notifier_provider_screen.dart';
import 'package:riverpod_guide/src/screens/consumer.dart';
import 'package:riverpod_guide/src/screens/consumer_stateful_widget.dart';
import 'package:riverpod_guide/src/screens/consumer_widget.dart';
import 'package:riverpod_guide/src/screens/future_provider_screen.dart';
import 'package:riverpod_guide/src/screens/provider_screen.dart';
import 'package:riverpod_guide/src/screens/state_notifier_provider.dart';
import 'package:riverpod_guide/src/screens/state_provider_screen.dart';
import 'package:riverpod_guide/src/screens/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Consuming state",
            style: textTheme.bodyText1,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ConsumerWidgetScreen.routeName);
            },
            child: const Text("ConsumerWidget"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ConsumerScreen.routeName);
            },
            child: const Text("Consumer"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(ConsumerStatefulWidgetScreen.routeName);
            },
            child: const Text("ConsumerStatefulWidget"),
          ),
          Text(
            "Providers",
            style: textTheme.bodyText1,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ProviderScreen.routeName);
            },
            child: const Text("Provider"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(StateProviderScreen.routeName);
            },
            child: const Text("State Provider"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(StateNotifierProviderScreen.routeName);
            },
            child: const Text("State Notifier Provider"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FutureProviderScreen.routeName);
            },
            child: const Text("Future Provider"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(StreamProviderScreen.routeName);
            },
            child: const Text("Stream Provider"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(ChangeNotifierProviderScreen.routeName);
            },
            child: const Text("Change Notifier Provider"),
          ),
        ],
      ),
    );
  }
}
