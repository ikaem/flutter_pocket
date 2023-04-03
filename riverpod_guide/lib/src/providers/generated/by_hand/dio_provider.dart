import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/providers/hello_world_provider.dart';

final dioProvider = Provider((ref) => Dio());

// a bit more complext
final moveProvider = FutureProvider.autoDispose.family<String, int>((
  AutoDisposeFutureProviderRef ref,
  int movieId,
) async {
  final justTestString = ref.watch(helloWorldProvider);

  await Future.delayed(const Duration(milliseconds: 100));

  return justTestString;
});
