// note that this is state notifier - our model is the whole state
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:set_state/src/features/riverpod/presentation/domain/models/counter/model.dart';

const CounterModel _initialCounter = CounterModel(count: 0);

class CounterStateNotifier extends StateNotifier<CounterModel> {
  CounterStateNotifier() : super(_initialCounter);

  // this will set state again
  void increment() {
    state = CounterModel(count: state.count + 1);
  }
}
