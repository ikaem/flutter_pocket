import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/src/data/repositories/auth_repository.dart';
import 'package:riverpod_guide/src/providers/stream_provider.dart';

class AuthControllerWithStateNotifier extends StateNotifier<AsyncValue<void>> {
  AuthControllerWithStateNotifier(this.ref) : super(const AsyncData(null));

  final Ref ref;

  Future<void> singInAnonymously() async {
    final AuthRepository authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() => authRepository.singInAnonymously());
  }
}

// this is now just the provider
final StateNotifierProvider<AuthControllerWithStateNotifier, AsyncValue<void>>
    authControllerWithStateNotifierProvider =
    StateNotifierProvider<AuthControllerWithStateNotifier, AsyncValue<void>>(
        (ref) => AuthControllerWithStateNotifier(ref));
