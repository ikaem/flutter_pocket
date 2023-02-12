Future<void> futuresWithAsyncAwait() async {
  // note here that we return 42 as a future, and only because it is pšassed in a function that was passed to future.delayed
  try {
    final int response = await Future<int>.delayed(
      Duration(seconds: 1),
      () {
        return 42;
        // throw "Some error";
      },
    );

    print("response: $response");
  } catch (error) {
    print("error: $error");
  } finally {
    print("future is complete");
  }
}

void futuresWithCallbacks() {
  // note here that we return 42 as a future, and only because it is pšassed in a function that was passed to future.delayed
  final Future<void> futureResponse = Future<int>.delayed(
    Duration(seconds: 1),
    () {
      return 42;
      // throw "Some error";
    },
  )
      .then(
        (value) => print("value: $value"),
      )
      .catchError(
        (Object error) => print("error: $error"),
      )
      .whenComplete(
        () => print("future is complete"),
      );
}
