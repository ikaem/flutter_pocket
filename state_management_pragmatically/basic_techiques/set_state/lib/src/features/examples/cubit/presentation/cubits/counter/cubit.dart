import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:set_state/src/features/examples/cubit/presentation/cubits/counter/cubit_state.dart';

const CounterCubitState _initialState = CounterCubitState(count: 0);

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(_initialState);

  int countValue = 0;

  void onIncrement() {
    // no need for this function to be asyinc
    emit(CounterCubitState(count: ++countValue));
  }

  void onAddToCounter(int value) {
    countValue = countValue + value;
    emit(CounterCubitState(count: countValue));
  }
}
