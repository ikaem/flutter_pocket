import 'package:flutter/material.dart';
import 'package:riverpod_guide/src/screens/change_notifier_provider_screen.dart';
import 'package:riverpod_guide/src/screens/consumer.dart';
import 'package:riverpod_guide/src/screens/consumer_stateful_widget.dart';
import 'package:riverpod_guide/src/screens/consumer_widget.dart';
import 'package:riverpod_guide/src/screens/future_provider_screen.dart';
import 'package:riverpod_guide/src/screens/generated/sw_person_future_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_async_initialized_async_notifier_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_notifier_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_state_provider_screen.dart';
import 'package:riverpod_guide/src/screens/provider_screen.dart';
import 'package:riverpod_guide/src/screens/scoped_provider_screen.dart';
import 'package:riverpod_guide/src/screens/select_state_field_screen.dart';
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
          const Text("notifier and async notifer classes"),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(CounterWithStateProviderScreen.routeName);
            },
            child: const Text("CounterWithStateProviderScreen - legacy"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(CounterWithNotifierProviderScreen.routeName);
            },
            child: const Text("CounterWithNotifierProviderScreen - new"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                  WithAsyncInitializedAsyncInitializerScreen.routeName);
            },
            child:
                const Text("WithAsyncInitializedAsyncInitializerScreen - new"),
          ),
          const Text("Generated providers"),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SwPersonFutureScreen.routeName);
            },
            child: const Text("Sw Person Screen"),
          ),
          Text(
            "Consuming state",
            style: textTheme.bodyLarge,
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
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SelectStateFieldScreen.routeName);
            },
            child: const Text("Select provider property screen"),
          ),
          Text(
            "Providers",
            style: textTheme.bodyLarge,
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
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ScopedProvidersScreen.routeName);
            },
            child: const Text("Scoped Providers Screen"),
          )
        ],
      ),
    );
  }
}
