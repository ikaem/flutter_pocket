// ok, htis is just the state that we declare - this is notifier state
import 'package:riverpod_annotation/riverpod_annotation.dart';

class CounterWithNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    // state is give ot use by the Notifier - and is set initially to whatzever build retuned?
    state++;
  }
}

// generic is type of Notifer we use in the provider, and type of data in the notifier's state
final counterWithNotiferProvider =
    NotifierProvider<CounterWithNotifier, int>(() => CounterWithNotifier());

final counterWithNotiferProviderWithNewTearOff =
    NotifierProvider<CounterWithNotifier, int>(CounterWithNotifier.new);
