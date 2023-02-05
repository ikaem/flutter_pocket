int Function() functionThatReturnsCountingClosure() {
  int timesClosureWasCalled = 0;

  int Function() closureThatCounts = () {
    timesClosureWasCalled = timesClosureWasCalled + 1;

    return timesClosureWasCalled;
  };

  return closureThatCounts;
}

int counter = 0;

final Function() incrementCounter = () {
  counter = counter + 1;
  print(counter);
};
