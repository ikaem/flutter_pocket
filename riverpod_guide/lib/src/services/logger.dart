import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase providerBase, Object? previousValue,
      Object? newValue, ProviderContainer container) {
// this will be for state provider for taht counter thing
    if (newValue is StateController<int>) {
      print("state of counter changed");
      return;
    }

    print(
        "[${providerBase.name ?? providerBase.runtimeType}] value: $newValue");
  }
}
