import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/auth_repository.dart';

// final authStreamProvider = StreamProvider<String>((ref) {
final authStreamProvider = StreamProvider<String>((ref) {
  final authRepositroy = ref.watch(authProvider);

  return authRepositroy.authStream;
});

final authProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});
