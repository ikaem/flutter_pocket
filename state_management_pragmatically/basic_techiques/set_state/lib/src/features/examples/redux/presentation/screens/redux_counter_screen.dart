import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/actions.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/state.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/store.dart';

class ReduxCounterScreen extends StatelessWidget {
  const ReduxCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // they actually pass the bloc here manually

    return StoreConnector<CounterReduxState, String>(
      converter: (store) => store.state.count.toString(),
      builder: (context, countValue) {
        return Column(
          children: [
            Text("state: $countValue"),
            const SizedBox(
              height: 42,
            ),
            TextButton(
              onPressed: () =>
                  counterReduxStore.dispatch(CounterReduxAction.increment),
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 42,
            ),
            TextButton(
              onPressed: () =>
                  counterReduxStore.dispatch(CounterReduxAction.decrement),
              child: const Text("Decrement"),
            ),
          ],
        );
      },
    );
  }
}
