// TODO this should be freezed

class AuthApiDTO {
  // TODO all these fields will eventually be changed
  const AuthApiDTO({
    required this.id,
    required this.name,
    required this.token,
  });
  final String id;
  final String name;
  final String token;
}
