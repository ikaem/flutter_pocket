import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';

abstract class AuthRepository {
  Stream<Auth?> get observeAuth;
  Future<Auth?> getAuth();
  Future<void> login(LoginArgsValue args);
}
