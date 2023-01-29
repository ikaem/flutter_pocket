import 'dart:async';

abstract class StreamSubscriptionExample {
// TODO this is just a generaly syntax - the one that we have integrated into rx dart i guess
  StreamSubscription<T> listen<T>(
    void Function(T event) onData, {
    Function() onError,
    void Function() onDone,
    bool cancelOnError,
  });
}
