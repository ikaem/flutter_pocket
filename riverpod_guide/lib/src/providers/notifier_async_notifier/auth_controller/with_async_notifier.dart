import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_guide/src/data/repositories/auth_repository.dart';
import 'package:riverpod_guide/src/providers/stream_provider.dart';

class AuthControllerWithAsyncNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // no need to return anything if we dont want to initialize state
  }

  Future<void> signInAnonymously() async {
    final AuthRepository authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() => authRepository.singInAnonymously());
  }
}

// providers here
final authControllerWithAsyncNotifierProvider =
    AsyncNotifierProvider<AuthControllerWithAsyncNotifier, void>(
        () => AuthControllerWithAsyncNotifier());

// this works too
// final authControllerWithAsyncNotifierProvider =
//     AsyncNotifierProvider<AuthControllerWithAsyncNotifier, void>(
//   AuthControllerWithAsyncNotifier.new,
// );

// this is with async notifier, but with autodispose
class AuthControllerWithAsyncNotifierWithAutoDispose
    extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // no need to return anything if we dont want to initialize state
  }

  Future<void> singInAnonymously() async {
    final AuthRepository authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() => authRepository.singInAnonymously());
  }
}

final authControllerWithAsyncNotifierProviderWithAutoDispose =
    AsyncNotifierProvider.autoDispose<AuthControllerWithAsyncNotifier, void>(
        () => AuthControllerWithAsyncNotifier());
