import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide ChangeNotifierProvider;
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc.dart';
import 'package:set_state/src/features/cubit/presentation/cubits/counter/cubit.dart';
import 'package:set_state/src/features/getx/presentation/stores/counter/controller.dart';
import 'package:set_state/src/features/inherited_widget/presentation/providers/counter_inherited_widget.dart';
import 'package:set_state/src/features/provider/presentation/controllers/counter/counter_notifier.dart';
import 'package:set_state/src/features/redux/presentation/stores/counter/store.dart';
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
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class CubitApp extends StatelessWidget {
  const CubitApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

// what if we have multiple stores
class ReduxApp extends StatelessWidget {
  const ReduxApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: counterReduxStore,
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

class MobXApp extends StatelessWidget {
  const MobXApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class GetXApp extends StatelessWidget {
  const GetXApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // normally, i would not do this here - i would do it for each screen mostly. top level ones weould be stored here
    // i would use this mostyle for dpeenendecies to be used throughout the app
    CounterGetXController counterGetXController =
        Get.put(CounterGetXController());

    return const GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class GetItApp extends StatelessWidget {
  const GetItApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
