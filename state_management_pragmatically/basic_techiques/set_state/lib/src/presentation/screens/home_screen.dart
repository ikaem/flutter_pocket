import 'package:flutter/material.dart';
import 'package:set_state/src/features/bloc/presentation/screens/bloc_screen.dart';
import 'package:set_state/src/features/cubit/presentation/screens/cubit_screen.dart';
import 'package:set_state/src/features/get_it/presentation/screens/get_it_screen.dart';
import 'package:set_state/src/features/inherited_widget/presentation/screens/inherited_widget_screen.dart';
import 'package:set_state/src/features/mobx/presentation/screens/mobx_screen.dart';
import 'package:set_state/src/features/provider/presentation/screens/provider_screen.dart';
import 'package:set_state/src/features/redux/presentation/screens/redux_screen.dart';
import 'package:set_state/src/features/riverpod/presentation/screens/riverpod_screen.dart';
import 'package:set_state/src/features/set_state/presentation/screens/set_state_screen.dart';
import 'package:set_state/src/navigation/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: () =>
                AppRouter.toScreen(context, const SetStateScreen()),
            child: const Text("To set state"),
          ),
          TextButton(
            onPressed: () =>
                AppRouter.toScreen(context, const InheritedWidgetScreen()),
            child: const Text("To inherited widget"),
          ),
          TextButton(
            onPressed: () =>
                AppRouter.toScreen(context, const ProviderScreen()),
            child: const Text("To provider screen"),
          ),
          TextButton(
            onPressed: () =>
                AppRouter.toScreen(context, const RiverpodScreen()),
            child: const Text("To riverpod screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const BlocScreen()),
            child: const Text("To bloc screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const CubitScreen()),
            child: const Text("To cubit screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const ReduxScreen()),
            child: const Text("To Redux screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const MobXScreen()),
            child: const Text("To MobX screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const MobXScreen()),
            child: const Text("To GetX screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(context, const GetItScreen()),
            child: const Text("To GetIt screen"),
          ),
        ],
      ),
    );
  }
}
