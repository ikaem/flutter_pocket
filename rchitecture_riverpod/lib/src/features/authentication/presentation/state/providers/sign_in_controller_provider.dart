import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/controllers/sign_in_controller.dart';
import 'package:rchitecture_riverpod/src/features/authentication/presentation/state/providers/auth_repository_provider.dart';

final signInControllerProvider =
    StateNotifierProvider.autoDispose<SignInController, AsyncValue<void>>(
        (ref) {
  // now we get auth repository from auth rpovider
  final AuthRepository authRepository = ref.watch(authRepositoryProvider);

  return SignInController(authRepository: authRepository);
});
