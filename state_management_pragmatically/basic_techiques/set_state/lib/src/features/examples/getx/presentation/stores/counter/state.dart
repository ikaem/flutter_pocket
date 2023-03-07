class CounterGextState {
  CounterGextState({
    required this.count,
  });

// this cannot be final, because we incrmeent and decrement it
// so we dont create new state each time. instead, we modify it
  // final int count;
  int count;
}
