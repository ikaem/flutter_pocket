import 'package:rchitecture_riverpod/src/features/authentication/domain/models/app_user.dart';

abstract class AuthRepository {
  // this method will actually emit a new value ebvery time the aith state changes
  Stream<AppUser?> authStateChanges();
  Future<void> signInAnonimously();
  Future<void> signOut();
  AppUser? get currentUser;
  void dispose();
}
