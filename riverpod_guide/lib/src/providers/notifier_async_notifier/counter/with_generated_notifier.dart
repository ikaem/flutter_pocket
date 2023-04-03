// this actually generates provider from a class taht we define

import 'package:riverpod_annotation/riverpod_annotation.dart';

part "with_generated_notifier.g.dart";

@riverpod
class CounterWithGeneration extends _$CounterWithGeneration {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}
