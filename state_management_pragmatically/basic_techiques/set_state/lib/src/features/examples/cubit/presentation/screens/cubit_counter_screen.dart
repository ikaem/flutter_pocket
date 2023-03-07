import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/features/examples/cubit/presentation/cubits/counter/cubit.dart';
import 'package:set_state/src/features/examples/cubit/presentation/cubits/counter/cubit_state.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // todo READ MIGHT BE BOOD HERE AS WELL - so maybe read is better? with read it would not rebuild
    // it works with read as well
    // it might be this whole thing is extra
    final CounterCubit counterBloc = context.read<CounterCubit>();

    // they actually pass the bloc here manually
    return BlocBuilder<CounterCubit, CounterCubitState>(
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
              onPressed: () => counterBloc.onAddToCounter(4),
              child: const Text("Add 4"),
            ),
            const SizedBox(
              height: 42,
            ),
            TextButton(
              onPressed: () => counterBloc.onIncrement(),
              child: const Text("Incrmeent"),
            )
          ],
        );
      },
    );
  }
}
