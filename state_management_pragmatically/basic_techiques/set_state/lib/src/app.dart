import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide ChangeNotifierProvider;
import 'package:provider/provider.dart';
import 'package:set_state/src/features/inherited_widget/presentation/providers/counter_inherited_widget.dart';
import 'package:set_state/src/features/provider/presentation/controllers/counter/counter_notifier.dart';
import 'package:set_state/src/presentation/screens/home_screen.dart';

class SetStateApp extends StatelessWidget {
  const SetStateApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class InheritedWidgetApp extends StatelessWidget {
  const InheritedWidgetApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // data provider has to wrap the app - otherwise, on change route, context has no logner access the inherited widget, because we wrapped only home screen route
    return const CounterDataProvider(
      child: MaterialApp(home: HomeScreen()),
    );
  }
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterNotifier>(
      create: (context) => CounterNotifier(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class RiverpodApp extends StatelessWidget {
  const RiverpodApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class BlocApp extends StatelessWidget {
  const BlocApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
