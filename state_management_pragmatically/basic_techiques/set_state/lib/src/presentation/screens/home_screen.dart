import 'package:flutter/material.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_model/presentation/screens/items_screen.dart';
import 'package:set_state/src/features/cart_app/cart_inherited_widget/presentation/screens/items_screen.dart';
import 'package:set_state/src/features/cart_app/cart_set_state/presentation/screens/items_screen.dart';
import 'package:set_state/src/features/examples/bloc/presentation/screens/bloc_screen.dart';
import 'package:set_state/src/features/examples/cubit/presentation/screens/cubit_screen.dart';
import 'package:set_state/src/features/examples/get_it/presentation/screens/get_it_screen.dart';
import 'package:set_state/src/features/examples/inherited_widget/presentation/screens/inherited_widget_screen.dart';
import 'package:set_state/src/features/examples/mobx/presentation/screens/mobx_screen.dart';
import 'package:set_state/src/features/examples/provider/presentation/screens/provider_screen.dart';
import 'package:set_state/src/features/examples/redux/presentation/screens/redux_screen.dart';
import 'package:set_state/src/features/examples/riverpod/presentation/screens/riverpod_screen.dart';
import 'package:set_state/src/features/examples/set_state/presentation/screens/set_state_screen.dart';
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
          const Center(child: Text("Examples")),
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
          const Center(child: Text("Cart App")),
          TextButton(
            onPressed: () =>
                AppRouter.toScreen(context, const AppSetStateItemsScreen()),
            child: const Text("To AppSetState screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(
                context, const AppInheritedWidgetItemsScreen()),
            child: const Text("To AppInheritedWidget screen"),
          ),
          TextButton(
            onPressed: () => AppRouter.toScreen(
                context, const AppInheritedModelItemsScreen()),
            child: const Text("To AppInheritedModel screen"),
          ),
        ],
      ),
    );
  }
}
