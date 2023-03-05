import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_event.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_state.dart';

const CounterBlocState _initialState = CounterBlocState(count: 0);

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(_initialState) {
    on<CounterBlocEventIncrement>(_onCounterIncrement);
    on<CounterBlocEventAdd>(_onCounterAdd);
  }

  // not sure what is thsi used for
  // oh, we will we using this to always have what is the value - hm - but why do we need to hodl sdata in the staste htne?
  int countValue = 0;

  void _onCounterIncrement(
    CounterBlocEventIncrement event,
    Emitter<CounterBlocState> emitter,
  ) {
    // so we actually keep the state here, which is silly
    ++countValue;
    emitter(CounterBlocState(count: countValue));
  }

  void _onCounterAdd(
    CounterBlocEventAdd event,
    Emitter<CounterBlocState> emitter,
  ) {
    // so we actually keep the state here, which is silly
    countValue = event.value + countValue;
    emitter(CounterBlocState(count: countValue));
  }
}
