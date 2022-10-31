import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AutoDisposeRefExtension on AutoDisposeRef {
  void cacheFor(Duration duration) {
    final link = keepAlive();

    final timer = Timer(duration, (() {
      link.close();
    }));

    onDispose(() {
      timer.cancel();
    });
  }
}
