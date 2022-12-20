// class EmptySearchResultException implements Exception {}

class UserAuthenticationRequiredException implements Exception {}

class InvalidCredentialsException implements Exception {}

class UsernameAlreadyTakenException implements Exception {}

class EmailAlreadyRegisteredException implements Exception {}

class UserAlreadyLoggedOutException implements Exception {}

// TODO rename these exceptions to reflect domain
// TODO exceptions could live in domain/models too maybe