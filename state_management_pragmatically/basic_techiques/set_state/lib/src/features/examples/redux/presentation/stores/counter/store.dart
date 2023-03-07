import 'package:redux/redux.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/reducer.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/state.dart';

final Store<CounterReduxState> counterReduxStore = Store<CounterReduxState>(
  counterReduxReducer,
  initialState: const CounterReduxState(count: 0),
);
