class CounterBlocEvent {
  const CounterBlocEvent();
}

class CounterBlocEventIncrement extends CounterBlocEvent {}

class CounterBlocEventAdd extends CounterBlocEvent {
  const CounterBlocEventAdd({
    required this.value,
  });

  final int value;
}
