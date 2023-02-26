import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_event.dart';
import 'package:set_state/src/features/bloc/presentation/blocs/counter/bloc_state.dart';

const CounterBlocState _initialState = CounterBlocState(count: 0);

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(_initialState);

  // not sure what is thsi used for
  // oh, we will we using this to always have what is the value - hm - but why do we need to hodl sdata in the staste htne?
}
