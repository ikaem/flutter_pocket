import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';

// class SignInController extends StateNotifier<AsyncData<void>> {
class SignInController extends StateNotifier<AsyncValue<void>> {
  SignInController({required this.authRepository})
      : super(const AsyncData<void>(null));

  final AuthRepository authRepository;

  // ok, now we have a function to expose to sign in

  Future<void> anonymously() async {
    // for now, jsut call the function
    // note - this shold probably be good to handle errors somehow
    await authRepository.signInAnonimously();
  }

  Future<void> anonymouslyWithGuard() async {
    state = const AsyncLoading<void>();
    state = await AsyncValue.guard<void>(
      () => authRepository.signInAnonimously(),
      onError: () => AsyncError("Hello", StackTrace.current),
    );
  }
}
