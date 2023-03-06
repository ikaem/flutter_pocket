import 'package:flutter/material.dart';
import 'package:set_state/src/features/get_it/presentation/providers/counter/counter_change_notifier.dart';
import 'package:set_state/src/features/get_it/presentation/providers/counter/libraries/get_it/dependency_injection_wrapper.dart';

// we could use value notifieer builder
class GetItCounterScreen extends StatefulWidget {
  const GetItCounterScreen({super.key});

  @override
  State<GetItCounterScreen> createState() => _GetItCounterScreenState();
}

class _GetItCounterScreenState extends State<GetItCounterScreen> {
  @override
  void initState() {
    super.initState();
    _initializeScreen();
  }

  @override
  void dispose() {
    _disposeScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DependencyInjectionWrapper.checkIsAllReady(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final bool isError = snapshot.hasError;
          if (isError) {
            return const Center(
              child: Text("There was an error resolving injected dependecies"),
            );
          }

          final CounterChangeNotifier counterChangeNotifier =
              DependencyInjectionWrapper.getSingleton<CounterChangeNotifier>();

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "You pressed button this many times: ${counterChangeNotifier.counter} "),
                const SizedBox(
                  height: 48,
                ),
                TextButton(
                  onPressed: () {
                    counterChangeNotifier.incrementCounter();
                  },
                  child: const Text("Increment"),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _initializeScreen() async {
    await DependencyInjectionWrapper.checkIsReady<CounterChangeNotifier>();

    final CounterChangeNotifier counterChangeNotifier =
        DependencyInjectionWrapper.getSingleton<CounterChangeNotifier>();

    counterChangeNotifier.addListener(updateWidgetBecause);
  }

  Future<void> _disposeScreen() async {
    final CounterChangeNotifier counterChangeNotifier =
        DependencyInjectionWrapper.getSingleton<CounterChangeNotifier>();

    counterChangeNotifier.removeListener(updateWidgetBecause);
  }

  void updateWidgetBecause() => setState(() {});
}
