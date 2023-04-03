import 'package:riverpod_annotation/riverpod_annotation.dart';

part "controller_provider.g.dart";

@riverpod
class SomeController extends _$SomeController {
  @override
  Future<String> build() async {
    await Future.delayed(const Duration(milliseconds: 500));

// this will set state to hello, but before it, state will be set to loading initially - so two states will be emitted
    return "Hello";
  }
}

@riverpod
class SomeControllerWithArguments extends _$SomeControllerWithArguments {
  @override
  Future<String> build(
    String someValue,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));

// this will set state to hello, but before it, state will be set to loading initially - so two states will be emitted
    return someValue;
  }
}
