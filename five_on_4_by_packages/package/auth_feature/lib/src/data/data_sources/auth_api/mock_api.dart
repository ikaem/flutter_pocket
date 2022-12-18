import 'dart:math';

import 'package:auth_feature/src/data/data_sources/auth_api/auth_api.dart';
import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:auth_feature/src/presentation/stores/utils/exceptions/exceptions.dart';

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

    if (randNumber == 2) throw InvalidCredentialsException();
    if (randNumber == 1) throw Exception("Just a generic error");
    // TODO this is just a mock now
    const AuthApiDTO dto = AuthApiDTO(name: "Karlo", token: "Some token");

    return dto;
  }
}
