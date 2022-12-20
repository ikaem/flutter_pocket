import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

abstract class AuthDBApiRepository {
  Future<void> login(AuthDbApiDTO dto);
  Future<void> logout();
  Future<AuthDbApiDTO> getAuth();
  Stream<AuthDbApiDTO?> observeAuth();
}
