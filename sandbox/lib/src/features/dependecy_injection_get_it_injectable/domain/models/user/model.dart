import 'package:sandbox/src/features/dependecy_injection_get_it_injectable/data/repositories/auth/dtos/user/dto.dart';

class UserModel {
  const UserModel({
    required this.id,
    required this.email,
    required this.username,
  });

  final String id;
  final String email;
  final String username;

  factory UserModel.fromRemoteDTO(UserDTO remoteDTO) {
    return UserModel(
        id: remoteDTO.id, email: remoteDTO.email, username: remoteDTO.username);
  }
}
