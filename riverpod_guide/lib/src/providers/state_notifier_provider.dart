import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final clockStateNotifierProvider =
    StateNotifierProvider<Clock, DateTime>((ref) {
  return Clock();
});

class Clock extends StateNotifier<DateTime> {
  Clock() : super(DateTime.now()) {
    // i guess here we have acces to all - this is a cool shorthand
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      // we update the suepr state with new now
      state = DateTime.now();
    });
  }

  late final Timer _timer;

// so note that stsate notifier has dispose method too
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
