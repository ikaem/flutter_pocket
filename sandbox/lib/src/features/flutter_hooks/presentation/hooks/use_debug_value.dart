import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ValueNotifier<T?> useDebugValue<T>(
  String debugLabel, [
  T? initialState,
]) {
  final ValueNotifier<T?> state = useState<T?>(initialState);

  log("$debugLabel : ${state.value}");

  return state;
}
