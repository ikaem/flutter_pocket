import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ValueNotifier<T> useDebugValueWithClass<T>(T initialData, String debugLabel) {
  return use(_DebugValueHook(initialData: initialData, debugLabel: debugLabel));
}

class _DebugValueHook<T> extends Hook<ValueNotifier<T>> {
  const _DebugValueHook({
    required this.initialData,
    required this.debugLabel,
  });

  final String debugLabel;
  final T initialData;

  // @override
  // HookState<ValueNotifier<T>, Hook<ValueNotifier<T>>> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }

  @override
  _DebugValueHookState<T> createState() => _DebugValueHookState<T>();
}

class _DebugValueHookState<T>
    extends HookState<ValueNotifier<T>, _DebugValueHook<T>> {
  late final _state = ValueNotifier<T>(hook.initialData)
    ..addListener(_listener);

  @override
  void dispose() {
    _state.dispose();
  }

  @override
  ValueNotifier<T> build(BuildContext contet) {
    log("${hook.debugLabel} : ${_state.value}");

    return _state;
  }

  void _listener() {
    setState(() {});
  }
}
