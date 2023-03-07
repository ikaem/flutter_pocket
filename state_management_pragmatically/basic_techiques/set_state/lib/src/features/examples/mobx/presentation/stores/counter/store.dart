// note that _counterStore is our abstract, and _$CounterStore is generatzed code
// this is interesting - we say that class is equal some other class
// thsi eactually extends _CounterStore, same as usual extends _counterStore

import 'package:mobx/mobx.dart';

part "store.g.dart";

class CounterMobXStore = _CounterMobXStore with _$CounterMobXStore;

abstract class _CounterMobXStore with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
