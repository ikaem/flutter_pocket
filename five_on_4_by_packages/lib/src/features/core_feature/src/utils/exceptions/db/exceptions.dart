class DbFetchException implements Exception {
  DbFetchException({
    required this.message,
  });

  final String message;

  @override
  String toString() {
    return "DbFetchException: error: $message";
  }
}
