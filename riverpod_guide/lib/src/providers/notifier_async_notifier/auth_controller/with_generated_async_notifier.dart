import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_guide/src/data/repositories/auth_repository.dart';
import 'package:riverpod_guide/src/providers/stream_provider.dart';

part "with_generated_async_notifier.g.dart";

@riverpod
class AuthControllerWithAsyncNotifierGenerated
    extends _$AuthControllerWithAsyncNotifierGenerated {
  @override
  FutureOr<void> build() {}

  Future<void> singInAnonymously() async {
    final AuthRepository authRepository = ref.read(authRepositoryProvider);

    state = const AsyncLoading<void>();

    state = await AsyncValue.guard(() {
      print("hello!!!!!!!!!!!!");
      return authRepository.singInAnonymously();
    });
  }
}
