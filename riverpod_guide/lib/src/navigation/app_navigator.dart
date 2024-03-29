import 'package:flutter/material.dart';
import 'package:riverpod_guide/src/screens/change_notifier_provider_screen.dart';
import 'package:riverpod_guide/src/screens/consumer.dart';
import 'package:riverpod_guide/src/screens/consumer_stateful_widget.dart';
import 'package:riverpod_guide/src/screens/consumer_widget.dart';
import 'package:riverpod_guide/src/screens/future_provider_screen.dart';
import 'package:riverpod_guide/src/screens/generated/sw_person_future_screen.dart';
import 'package:riverpod_guide/src/screens/home_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_async_initialized_async_notifier_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_notifier_screen.dart';
import 'package:riverpod_guide/src/screens/notifier_async_notifier/counter/with_state_provider_screen.dart';
import 'package:riverpod_guide/src/screens/provider_screen.dart';
import 'package:riverpod_guide/src/screens/scoped_provider_screen.dart';
import 'package:riverpod_guide/src/screens/select_state_field_screen.dart';
import 'package:riverpod_guide/src/screens/state_notifier_provider.dart';
import 'package:riverpod_guide/src/screens/state_provider_screen.dart';
import 'package:riverpod_guide/src/screens/stream_provider_screen.dart';

class AppNavigator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case ConsumerWidgetScreen.routeName:
            {
              return const ConsumerWidgetScreen();
            }
          case ConsumerScreen.routeName:
            {
              return const ConsumerScreen();
            }
          case ConsumerStatefulWidgetScreen.routeName:
            {
              return const ConsumerStatefulWidgetScreen();
            }

          case SelectStateFieldScreen.routeName:
            {
              return const SelectStateFieldScreen();
            }

          // providers
          case ProviderScreen.routeName:
            {
              return const ProviderScreen();
            }

          case StateProviderScreen.routeName:
            {
              return const StateProviderScreen();
            }

          case StateNotifierProviderScreen.routeName:
            {
              return const StateNotifierProviderScreen();
            }

          case FutureProviderScreen.routeName:
            {
              return const FutureProviderScreen();
            }

          case StreamProviderScreen.routeName:
            {
              return const StreamProviderScreen();
            }

          case ChangeNotifierProviderScreen.routeName:
            {
              return const ChangeNotifierProviderScreen();
            }

          case ScopedProvidersScreen.routeName:
            {
              return const ScopedProvidersScreen();
            }

          case SwPersonFutureScreen.routeName:
            {
              return const SwPersonFutureScreen();
            }

          case CounterWithStateProviderScreen.routeName:
            {
              return const CounterWithStateProviderScreen();
            }

          case CounterWithNotifierProviderScreen.routeName:
            {
              return const CounterWithNotifierProviderScreen();
            }

          case WithAsyncInitializedAsyncInitializerScreen.routeName:
            {
              return const WithAsyncInitializedAsyncInitializerScreen();
            }

          // default
          default:
            {
              return const HomeScreen();
            }
        }
      },
    );
  }
}
