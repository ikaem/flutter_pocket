import 'package:bloc/bloc.dart';

// TODO note how here we dont have to explicitly set class for state - state could be primitive
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
