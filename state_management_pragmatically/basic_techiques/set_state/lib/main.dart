import 'package:flutter/material.dart';
import 'package:set_state/src/features/examples/get_it/presentation/providers/counter/counter_change_notifier.dart';
import 'package:set_state/src/libraries/get_it/dependency_injection_wrapper.dart';

import 'src/app.dart';

void main() async {
  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.

// TODO only needed for get it
  DependencyInjectionWrapper.registerSingleton<CounterChangeNotifier>(
    CounterChangeNotifier(),
    signalsReady: true,
  );

  runApp(
    // const SetStateApp(),
    // const CubitApp(),
    const CartBlocApp(),
  );
}
