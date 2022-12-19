import 'package:auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

export "db_api.dart";

abstract class AuthDbApi {
  // TODO this needs database
  Future<void> login(AuthDbApiDTO dto);
  Future<AuthDbApiDTO> getAuth();
  Stream<AuthDbApiDTO?> observeAuth();
}
