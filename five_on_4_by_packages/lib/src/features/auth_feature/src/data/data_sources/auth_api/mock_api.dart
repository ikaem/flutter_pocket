import 'dart:math';

import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';

class AuthMockApi implements AuthApi {
  @override
  Future<AuthApiDTO> login({
    required String email,
    required String password,
  }) async {
    final int randNumber = Random().nextInt(3);

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    // if (randNumber == 2) throw InvalidCredentialsException();
    // if (randNumber == 1) throw Exception("Just a generic error");
    // TODO this is just a mock now
    const AuthApiDTO dto = AuthApiDTO(
      id: "1",
      name: "Karlo",
      token: "Some token",
    );

    return dto;
  }

  @override
  Future<void> logout() async {
    final int randNumber = Random().nextInt(3);

    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    // if (randNumber == 2) throw UserAlreadyLoggedOutException();
    // if (randNumber == 1) throw Exception("Just a generic error");

    return;
  }
}
