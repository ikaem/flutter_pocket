import 'package:riverpod_annotation/riverpod_annotation.dart';

part "provider.g.dart";

@riverpod
Stream<int> streamValues(StreamValuesRef ref) {
  return Stream.fromIterable([
    1,
    2,
    3,
  ]);
}
