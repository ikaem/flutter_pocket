import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_event.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_state.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // todo READ MIGHT BE BOOD HERE AS WELL
    final CounterBloc counterBloc = context.watch<CounterBloc>();

    // they actually pass the bloc here manually
    return BlocBuilder<CounterBloc, CounterBlocState>(
      // this is not needed normally
      bloc: counterBloc,
      builder: (context, state) {
        final int counter = state.count;

        return Column(
          children: [
            Text("state: $counter"),
            const SizedBox(
              height: 42,
            ),
            TextButton(
              onPressed: () =>
                  counterBloc.add(const CounterBlocEventAdd(value: 4)),
              child: const Text("Add 4"),
            ),
            const SizedBox(
              height: 42,
            ),
            TextButton(
              onPressed: () => counterBloc.add(CounterBlocEventIncrement()),
              child: const Text("Incrmeent"),
            )
          ],
        );
      },
    );
  }
}
