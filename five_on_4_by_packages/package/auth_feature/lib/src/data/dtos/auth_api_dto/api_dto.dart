// TODO this should be freezed

class AuthApiDTO {
  // TODO all these fields will eventually be changed
  const AuthApiDTO({
    required this.name,
    required this.token,
  });

  final String name;
  final String token;
}
