import 'package:flutter/material.dart';

import 'libraries/get_it/dependency_injection_wrapper.dart';

class CounterChangeNotifier extends ChangeNotifier {
  CounterChangeNotifier() {
    // we register thsi to let get it kknow that the class is ready to be used
    // because maybe it needs to do some job before it is ready

    _initializeNotifier();
  }

  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  Future<void> _initializeNotifier() async {
    await Future.delayed(const Duration(milliseconds: 200));
    // this is some async job tzhat needs to be done
    DependencyInjectionWrapper.signalReady<ChangeNotifier>(this);
  }
}
