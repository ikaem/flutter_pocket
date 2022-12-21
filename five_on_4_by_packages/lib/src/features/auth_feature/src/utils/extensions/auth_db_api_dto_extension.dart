import 'package:five_on_4_by_packages/src/features/auth_feature/auth_feature.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_api_dto/api_dto.dart';
import 'package:five_on_4_by_packages/src/features/auth_feature/src/data/dtos/auth_db_api_dto/db_api_dto.dart';

extension AuthDbApiDTOExtension on AuthDbApiDTO {
  // TODO cannot access static methods on classes when they are defined in extensions - but, thes are avaialble on the extnesion inteslf AuthDbApiDTOExtension.fromAuth();
  static fromAuth(Auth auth) {
    final AuthDbApiDTO dto = AuthDbApiDTO(
      id: auth.id,
      name: auth.name,
      token: auth.token,
    );

    return dto;
  }

  static fromAuthApiDTO(AuthApiDTO auth) {
    final AuthDbApiDTO dto = AuthDbApiDTO(
      id: auth.id,
      name: auth.name,
      token: auth.token,
    );

    return dto;
  }
}


// TODO make these extensions for all types, to remove constructors