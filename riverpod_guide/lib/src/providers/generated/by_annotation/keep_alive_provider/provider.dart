import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "provider.g.dart";

@riverpod
String getString(GetStringRef ref) {
  return "Hello string";
}

@Riverpod(
    keepAlive:
        false) // -> this is same as the above @riverpod - this is default, so it autodeisposes automatically
String getAnotherString(GetAnotherStringRef ref) {
  return "Hello another string";
}

@Riverpod(keepAlive: true)
String getAliveString(GetAliveStringRef ref) {
  return "Hello string";
}

// this is with custom caching here - so data will be cached for 60 seconds. any data returned here will be actually from cache in next 60 seconds.

@riverpod
String getCachedString(GetCachedStringRef ref) {
  final KeepAliveLink link = ref.keepAlive();

  final timer = Timer(const Duration(seconds: 5), () {
    // calling close on the keep alive link
    link.close();
  });

  ref.onDispose(() => timer.cancel());

  final random = Random();

  return random.nextInt(10).toString();
}
