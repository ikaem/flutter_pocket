import 'package:rchitecture_riverpod/src/application/services/in_memory_store/in_memory_store.dart';
import 'package:rchitecture_riverpod/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:rchitecture_riverpod/src/features/authentication/domain/models/app_user.dart';

class AuthRepositoryFake implements AuthRepository {
  final _authState = InMemoryStore<AppUser?>(null);

  @override
  Stream<AppUser?> authStateChanges() {
    //
    return _authState.stream;
  }

  @override
  Future<void> signInAnonimously() async {
    await Future.delayed(const Duration(seconds: 1));
    // we just wait a bit

    // and then we set value on the in memory store
    _authState.value = const AppUser(uid: "123");
  }

  @override
  Future<void> signOut() async {
    // just st null
    _authState.value = null;
  }

  @override
  AppUser? get currentUser {
    final user = _authState.value;

    return user;
  }

  @override
  void dispose() => _authState.close();
}
