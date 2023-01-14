class AuthKeyStoreDTODataInvalidException implements Exception {
  const AuthKeyStoreDTODataInvalidException({
    required this.message,
  });

  final String message;

  @override
  String toString() => "AuthKeyStoreDTODataInvalidException: $message";
}
