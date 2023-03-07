import 'package:set_state/src/features/examples/redux/presentation/stores/counter/actions.dart';
import 'package:set_state/src/features/examples/redux/presentation/stores/counter/state.dart';

CounterReduxState counterReduxReducer(
  CounterReduxState state,
  // dynamic is in the book - it has to be dynamic
  dynamic action,
  // CounterReduxAction action,
) {
  switch (action) {
    case CounterReduxAction.increment:
      return CounterReduxState(count: state.count + 1);
    case CounterReduxAction.decrement:
      return CounterReduxState(count: state.count - 1);

    default:
      return state;
  }
}
