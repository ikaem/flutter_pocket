Stream<String> generateAsyncGenerator() async* {
  final values = <String>['karlo', 'ivan', 'martina'];

  for (final value in values) {
    await Future.delayed(const Duration(seconds: 1));

    yield value;
  }
}

void consumeAsyncGenerator() {
  final stream = generateAsyncGenerator();

  stream.listen(print);
}

Iterable<int> generateSyncGenerator() sync* {
  for (var i = 0; i < 10; i++) {
    yield i * i;
  }
}

void consumeSyncGenerator() {
  final iterableValues = generateSyncGenerator();

  for (final value in iterableValues) {
    print(value);
  }
}
