class FireStoreGetException implements Exception {
  FireStoreGetException({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() {
    return "FireStoreGetException: status: $statusCode, error: $message";
  }
}

class FireStorePostException implements Exception {
  FireStorePostException({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() {
    return "FireStorePostException: status: $statusCode, error: $message";
  }
}
