// TODO probably all use cases in all features should be in the domain
import 'package:auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:auth_feature/src/data/repositories/auth_api_repository/auth_api_repository.dart';
import 'package:auth_feature/src/domain/models/auth/model.dart';

class AuthUseCases {
  const AuthUseCases({
    required this.authApiRepository,
  });

  final AuthApiRepository authApiRepository;

  // TODO test
  Future<Auth> login({
    // TODO probably should have a type for this
    required String email,
    required String password,
  }) async {
    final AuthApiDTO dto = await authApiRepository.login(
      email: email,
      password: password,
    );

    final Auth auth = Auth.fromApiDTO(dto);

    return auth;
  }
}
