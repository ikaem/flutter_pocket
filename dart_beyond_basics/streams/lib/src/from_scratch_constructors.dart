Future<void> listenPeriodicStream() async {
  final stream = Stream<int>.periodic(const Duration(seconds: 1), (value) {
    print('This is emitted: $value');
// 0, 1, 2, 3...
    return value;
  }).take(5);

  await for (final int value in stream) {
    print(value);
  }
}

Future<void> listenFromFuturesStream() async {
  final future1 = Future.value(1);
  final future2 = Future.value(2);
  final future3 = Future.value(3);
  final future4 = Future.value(4);
  final future5 = Future.delayed(const Duration(seconds: 1), () => 5);

  final stream = Stream.fromFutures([
    future1,
    future2,
    future3,
    future4,
    future5,
  ]);

  await for (final int value in stream) {
    print(value);
  }
}
