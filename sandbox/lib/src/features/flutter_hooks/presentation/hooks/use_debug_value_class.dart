import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class _DebugValueHook<T> extends Hook<ValueNotifier<T>> {
  const _DebugValueHook({
    required this.initialData,
    required this.debugLabel,
  });

  final String debugLabel;
  final T initialData;
}
