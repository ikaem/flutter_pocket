import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/domain/dependencies/models/user/model.dart';

abstract class AuthRepository {
  Future<void> login({
    required String email,
    required String password,
  });

  Future<void> register({
    required String username,
    required String email,
    required String password,
  });

  Future<void> logout();

  Future<UserModel?> getUser();
}
